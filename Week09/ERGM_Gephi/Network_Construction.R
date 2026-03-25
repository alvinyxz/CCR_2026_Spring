# =========================================================
# 00_Network_Construction.R
# Network construction and export script
# ---------------------------------------------------------
# Builds one cross-sectional network (t1) and exports data
# for ERGM + Gephi in CSV and RDS formats.
# =========================================================

library("tidyverse")
library("igraph")

set.seed(1)

# -----------------------------
# 1) Simulate actors
# -----------------------------
# Mechanism: each actor gets fixed attributes that can shape tie probability.
# - party/gender/age support homophily effects
# - outgoingness (1-7) acts like sociability/popularity potential
n <- 60
nodes <- tibble(
  id = 1:n,
  party = sample(c("Democrat", "Republican"), n, replace = TRUE),
  gender = sample(c("Woman", "Man"), n, replace = TRUE),
  age = sample(18:75, n, replace = TRUE),
  outgoingness = sample(1:7, n, replace = TRUE)
)

inv_logit <- function(x) 1 / (1 + exp(-x))

# -----------------------------
# 2) Build cross-sectional adjacency matrix (t1)
# -----------------------------
# Mechanism at t1: baseline sparse network with additive attribute effects.
# Positive same-party and same-gender terms create homophily.
# Negative age-gap term favors age similarity.
# Positive outgoingness term makes highly outgoing pairs more likely to connect.
adj_t1 <- matrix(0, nrow = n, ncol = n)

for (i in 1:(n - 1)) {
  for (j in (i + 1):n) {
    same_party <- as.integer(nodes$party[i] == nodes$party[j])
    same_gender <- as.integer(nodes$gender[i] == nodes$gender[j])
    age_gap <- abs(nodes$age[i] - nodes$age[j])

    tie_logit <- -4.0 +
      1.0 * same_party +
      0.8 * same_gender -
      0.08 * age_gap +
      0.20 * (nodes$outgoingness[i] + nodes$outgoingness[j])

    tie <- rbinom(1, 1, inv_logit(tie_logit))
    adj_t1[i, j] <- tie
    adj_t1[j, i] <- tie
  }
}

# Add modest triadic closure on absent ties
# Mechanism: triadic closure.
# If two actors share neighbors, they get an extra chance to form a tie.
for (i in 1:(n - 1)) {
  for (j in (i + 1):n) {
    if (adj_t1[i, j] == 0) {
      common_neighbors <- sum(adj_t1[i, ] * adj_t1[j, ])
      if (common_neighbors > 0) {
        p_close <- inv_logit(-3.4 + 0.55 * common_neighbors)
        tie <- rbinom(1, 1, p_close)
        adj_t1[i, j] <- tie
        adj_t1[j, i] <- tie
      }
    }
  }
}

diag(adj_t1) <- 0

# --- Remove isolates in t1 (connect any degree-0 node to a random other node) ---
deg_t1 <- rowSums(adj_t1)
if (any(deg_t1 == 0)) {
  iso_idx <- which(deg_t1 == 0)
  for (i in iso_idx) {
    # Pick a random node j != i
    j <- sample(setdiff(1:n, i), 1)
    adj_t1[i, j] <- 1
    adj_t1[j, i] <- 1
  }
}

# -----------------------------
# 3) Build exports
# -----------------------------
# Exports are written relative to the script folder.
out_dir <- "network_data"
dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)

adj_t1_named <- adj_t1
dimnames(adj_t1_named) <- list(as.character(nodes$id), as.character(nodes$id))

g_t1 <- graph_from_adjacency_matrix(adj_t1_named, mode = "undirected", diag = FALSE)

idx_t1 <- match(V(g_t1)$name, nodes$id)
V(g_t1)$party <- nodes$party[idx_t1]
V(g_t1)$gender <- nodes$gender[idx_t1]
V(g_t1)$age <- nodes$age[idx_t1]
V(g_t1)$outgoingness <- nodes$outgoingness[idx_t1]

edges_t1 <- as_tibble(as_data_frame(g_t1, what = "edges")) |>
  mutate(from = as.integer(from), to = as.integer(to))

adj_t1_wide <- as_tibble(adj_t1, .name_repair = "minimal")
names(adj_t1_wide) <- paste0("v", seq_len(ncol(adj_t1_wide)))
adj_t1_wide <- adj_t1_wide |> mutate(id = row_number(), .before = 1)

# ERGM exports (single cross-sectional network at t1)
write_csv(nodes, file.path(out_dir, "ergm_node_list.csv"))
write_csv(adj_t1_wide, file.path(out_dir, "ergm_adjacency_matrix.csv"))
write_csv(edges_t1, file.path(out_dir, "ergm_edge_list.csv"))

saveRDS(
  g_t1,
  file.path(out_dir, "ergm_network_rds.rds")
)

cat("\nExport complete. Files are in ./network_data\n")
cat("- ERGM: ergm_node_list.csv (nodes), ergm_adjacency_matrix.csv (adjacency), ergm_edge_list.csv (edges), ergm_network_rds.rds (igraph t1)\n")
