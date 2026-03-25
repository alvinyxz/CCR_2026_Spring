# =========================================================
# ERGM Tutorial
# =========================================================

# =========================================================
# 1) Load Packages and Set Data Path
# =========================================================

# Clean up the environment
rm(list = ls())
library("tidyverse")
library("igraph")
library("network")
library("ergm")
library("intergraph")

DATA_DIR <- "network_data"

# =========================================================
# 2) Import the Same Network in Multiple Ways
# =========================================================

# ---------------------------------------------------------
# Method 1A: CSV Files (node list + edge list)
# ---------------------------------------------------------
nodes_df <- read_csv(file.path(DATA_DIR, "ergm_node_list.csv"))
edges_df <- read_csv(file.path(DATA_DIR, "ergm_edge_list.csv"))

g_from_edgelist <- graph_from_data_frame(
  d = edges_df,
  directed = FALSE,
  vertices = nodes_df
)

# ---------------------------------------------------------
# Method 1B: CSV Files (node list + adjacency matrix)
# ---------------------------------------------------------
adj_df <- read_csv(file.path(DATA_DIR, "ergm_adjacency_matrix.csv"))

adj_from_adjcsv <- adj_df |>
  select(-id) |>
  as.matrix()

rownames(adj_from_adjcsv) <- adj_df$id
colnames(adj_from_adjcsv) <- names(adj_df)[-1]

g_from_adjcsv <- graph_from_adjacency_matrix(
  adj_from_adjcsv,
  mode = "undirected",
  diag = FALSE
)

idx_csv <- match(V(g_from_adjcsv)$name, nodes_df$id)
V(g_from_adjcsv)$party       <- nodes_df$party[idx_csv]
V(g_from_adjcsv)$gender      <- nodes_df$gender[idx_csv]
V(g_from_adjcsv)$age         <- nodes_df$age[idx_csv]
V(g_from_adjcsv)$outgoingness <- nodes_df$outgoingness[idx_csv]

# ---------------------------------------------------------
# Method 2: One RDS File
# ---------------------------------------------------------
g_from_rds <- readRDS(file.path(DATA_DIR, "ergm_network_rds.rds"))

nodes_rds <- tibble(
  id           = V(g_from_rds)$name,
  party        = V(g_from_rds)$party,
  gender       = V(g_from_rds)$gender,
  age          = V(g_from_rds)$age,
  outgoingness = V(g_from_rds)$outgoingness
)

# For the rest of this walkthrough, we use the RDS import.
g <- g_from_rds

nodes <- tibble(
  id           = V(g)$name,
  party        = V(g)$party,
  gender       = V(g)$gender,
  age          = V(g)$age,
  outgoingness = V(g)$outgoingness
)
adj <- as.matrix(as_adjacency_matrix(g, sparse = FALSE))

# Calculate network summary statistics
num_nodes   <- nrow(nodes)
num_edges   <- sum(adj) / 2
net_density <- sum(adj) / (nrow(adj) * (nrow(adj) - 1))

# Network summary: num_nodes nodes, num_edges edges, density = net_density
cat("Nodes:", num_nodes, "| Edges:", num_edges, "| Density:", signif(net_density, 3), "\n")

# =========================================================
# 3) Basic igraph Visualization
# =========================================================

V(g)$label <- NA_character_

set.seed(1)
lay <- layout_with_fr(g)

party_cols  <- c("Democrat" = "#0033CC", "Republican" = "#CC0000")
gender_cols <- c("Woman" = "#8000CC", "Man" = "#808080")

# Age coloring: dark grey (older) to bright orange (younger)
# Interpolate from dark grey (#404040) to bright orange (#FF8C00)
age_min        <- min(V(g)$age)
age_max        <- max(V(g)$age)
age_normalized <- (V(g)$age - age_min) / (age_max - age_min)
age_cols <- rgb(
  0.25 + 0.75 * age_normalized,  # R: 0.25 (dark) to 1.0 (bright)
  0.25 + 0.30 * age_normalized,  # G: 0.25 to 0.55
  0.25 - 0.25 * age_normalized   # B: 0.25 to 0.0
)
outgoing_sizes <- 4 + V(g)$outgoingness

par(mfrow = c(1, 4), mar = c(1, 1, 3, 1))

# Plot 1: Color by Party
plot(
  g,
  layout       = lay,
  vertex.color = party_cols[V(g)$party],
  vertex.size  = 8,
  vertex.label = NA,
  edge.color   = adjustcolor("grey30", alpha.f = 0.35),
  main         = "Color by Party\n(Democrat = Blue, Republican = Red)"
)

# Plot 2: Color by Gender
plot(
  g,
  layout       = lay,
  vertex.color = gender_cols[V(g)$gender],
  vertex.size  = 8,
  vertex.label = NA,
  edge.color   = adjustcolor("grey30", alpha.f = 0.35),
  main         = "Color by Gender\n(Woman = Purple, Man = Grey)"
)

# Plot 3: Color by Age (dark grey = older, orange = younger)
plot(
  g,
  layout       = lay,
  vertex.color = age_cols,
  vertex.size  = 8,
  vertex.label = NA,
  edge.color   = adjustcolor("grey30", alpha.f = 0.35),
  main         = "Color by Age\n(Older = Dark Grey, Younger = Orange)"
)

# Plot 4: Size by Outgoingness (muted green, larger = more outgoing)
plot(
  g,
  layout       = lay,
  vertex.color = "#5A8C5A",
  vertex.size  = outgoing_sizes,
  vertex.label = NA,
  edge.color   = adjustcolor("grey30", alpha.f = 0.35),
  main         = "Size by Outgoingness\n(Larger = More Outgoing)"
)

# Think about:
# - Does partisan sorting (homophily) appear stronger or weaker than expected?
# - How does gender or age similarity show up in ties?
# - What role might outgoingness play in who connects to whom?
# - Is triadic closure (transitivity) visible?

# =========================================================
# 4) Build a statnet Network Object
# =========================================================

# Why convert from igraph to statnet?
# - igraph is great for visualization and summary statistics.
# - ERGM fitting requires the statnet ecosystem (network objects).
# - ergm() only works with network objects, not igraph objects.
# - igraph and network are like Android vs. iOS — different systems entirely.
# - The intergraph package bridges the two worlds.

net1 <- intergraph::asNetwork(g)
set.vertex.attribute(net1, "party",        nodes$party)
set.vertex.attribute(net1, "gender",       nodes$gender)
set.vertex.attribute(net1, "age",          nodes$age)
set.vertex.attribute(net1, "outgoingness", nodes$outgoingness)

# =========================================================
# 5) Fit an ERGM Sequence
# =========================================================

# ERGM Terms:
#
# nodematch("attr")
#   Tests homophily on a categorical attribute.
#   Positive coef = same-group pairs more likely connected.
#
# absdiff("attr")
#   Tests absolute difference on a continuous attribute.
#   Negative coef = larger differences reduce tie probability.
#
# gwesp(alpha, fixed)
#   Geometrically-weighted edgewise shared partners.
#   Tests triadic closure: "my friends' friends become my friends."
#   Positive coef = strong clustering tendency.
#   - alpha (0.5): decay parameter controlling diminishing returns of extra
#     shared partners. Smaller = each extra partner still matters a lot.
#   - fixed = TRUE: alpha is held constant (simpler, more stable model).
#     fixed = FALSE: alpha is also estimated (more flexible, harder to fit).
#
# Other common terms:
#   triangle          — count of triangles
#   twopath           — count of two-paths
#   nodefactor("attr")— main effect of being in a category
#   nodecov("attr")   — effect of a continuous attribute on degree
#   mutual            — reciprocity (directed networks only)
#   isolates          — number of isolated nodes

# ---------------------------------------------------------
# Fit models m0 through m3 (adds one term at a time)
# ---------------------------------------------------------
m0 <- ergm(net1 ~ edges)
m1 <- ergm(net1 ~ edges + nodematch("party"))
m2 <- ergm(net1 ~ edges + nodematch("party") + nodematch("gender") + absdiff("age") + absdiff("outgoingness"))
m3 <- ergm(net1 ~ edges + nodematch("party") + nodematch("gender") + absdiff("age") + absdiff("outgoingness") + gwesp(0.5, fixed = TRUE))

# ---------------------------------------------------------
# Model m3 Summary
# ---------------------------------------------------------
print(summary(m3))

# How to interpret coefficients:
# - Coefficients are in log-odds.
# - exp(coef) = odds ratio (multiplicative change in odds).
# - Positive coef: tie more likely. Negative coef: tie less likely.
# - nodematch: positive = same-group pairs more likely tied.
# - absdiff: negative = larger differences reduce tie odds.
# - gwesp: positive = stronger triadic closure.
#
# The `edges` coefficient is the baseline/intercept.
# - Negative edges (e.g., -2.80): sparse network. Most pairs NOT connected.
#   e^(-2.80) ≈ 0.061 → odds 16:1 against a tie. Typical for social networks.
# - Positive edges (e.g., +1.00): dense network.
#   e^(1.00) ≈ 2.72 → odds 2.7:1 in favor of a tie. Very rare in real networks.
# - Zero edges: 50/50 baseline odds → density = 0.5 (only true for ~ edges alone;
#   in fuller models, other terms shift dyad probabilities away from 0.5).

coef_tbl <- tibble(
  term      = names(coef(m3)),
  log_odds  = unname(coef(m3)),
  odds_ratio = exp(log_odds)
)
print(coef_tbl)

# ---------------------------------------------------------
# AIC Comparison
# ---------------------------------------------------------
# Lower AIC = better. AIC balances fit with complexity.
# Difference > 10: strong evidence for lower-AIC model.
# Difference 4-7:  moderate evidence.
# Difference < 4:  similar support; prefer simpler model.
# If AIC increases when adding a term, that term is not worth the complexity.

print(AIC(m0, m1, m2, m3))

# ---------------------------------------------------------
# Goodness-of-Fit Diagnostics
# ---------------------------------------------------------
# GOF compares observed statistics to simulated networks from the fitted model.
#
# Reading the GOF plots:
# - Boxplot:  distribution across simulated networks at each x-axis value.
#     Middle line  = median simulated value
#     Box          = IQR (25th to 75th percentile)
#     Whiskers     = spread beyond the box (standard R boxplot rule)
#     Open circles = simulated outliers
# - Blue diamonds:  mean of simulated values.
# - Black line:     observed statistic from YOUR network.
#   Good fit: black points fall inside boxes / near blue diamonds.
#   Poor fit: black points consistently outside (above or below) the boxes.
#
# What to look for:
# - Most observed statistics within ~1 SD of simulated mean.
# - No systematic bias (observed always high or always low).
# - Worst fit at extreme degree nodes is common and often acceptable.

gof_m3 <- gof(m3)
print(gof_m3)
plot(gof_m3)
