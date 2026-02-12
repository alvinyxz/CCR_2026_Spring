##### JOUR 8500 Week 3 Quanteda Demo Full Script #####

##### Setup #####

#setwd([your file path here])

install.packages("librarian")

library(librarian)
shelf(tidyverse, quanteda, readxl)

## if you're looking for other preset dictionaries, install...
# quanteda.dictionaries:
# devtools::install_github("kbenoit/quanteda.dictionaries") 
# library(quanteda.dictionaries)

# quanteda.sentiment:
# remotes::install_github("quanteda/quanteda.sentiment")
# library(quanteda.sentiment)

##### Load in data #####
aian_snippets <- read_xlsx("Week04_aian_snippets.xlsx")
aian_snippets <- read.csv(file = "Week04_aian_snippets_csv.csv")


##### Step 1: Create Corpus #####
aian_corpus <- corpus(aian_snippets, text_field = "snippet")

### You can also use corpus_subset() to break the data into subgroups:

# here we split aian_corpus into their respective "primary" analysis categories,
# avoiding duplicate snippets in our analyses where both keywords appear
ai_corpus <- corpus_subset(aian_corpus, primary == c("American Indian"))
an_corpus <- corpus_subset(aian_corpus, primary == c("Alaska Native"))

##### Step 2: Check Texts and Document Variables (docvars) #####

#Access the texts
texts(aian_corpus)

#Access document variables (metadata)
docvars(aian_corpus)

##### Step 3: Tokenize our "documents" #####
# Quin: here's my tokenizing code for this:
aian_tokens <- tokens(aian_corpus, what = "word", 
                      remove_punct = TRUE, 
                      remove_symbols = TRUE, 
                      include_docvars = TRUE, 
                      verbose = TRUE) 

# verbose gives you some information while the tokenization is happening, and lets you know when it's done
# quanteda defaults to words, but some people may want to parse sentences, keep punctuation and/or symbols for other reasons.

#### Addressing stopwords ####
aian_tokens_sw <- tokens_select(aian_tokens, 
                                pattern = stopwords("en"),
                                selection = "remove")

##### Step 4: Create Dictionary #####

# create a dictionary with school, art, and sports categories
dict_A<- dictionary(list(school = c("school*", "child*", "student*", "campus*"),
                         art = c("art*", "museum*", "perform*", "music*", "craft*"),
                         sport = c("mascot", "athlet*", "sport*")
))
print(dict_A)

##### Step 5: Apply Dictionary to Tokens #####

# apply tokens_lookup() to the tokenized object
dict_tokens <- tokens_lookup(aian_tokens_sw, dictionary = dict_A)
print(dict_tokens)
# really hard to analyze the data this way...how can we turn this into a table?

##### Step 6: Make a Document-feature matrix #####

# The simplest way to apply our dfm is to nest our tokens_lookup() command inside dfm():
aian_dfm <- dfm(tokens_lookup(aian_tokens_sw,
                              dict_A,
                              valuetype = "glob",
                              verbose = TRUE))

# We can also trim down our dfm with dfm_trim() to include only dictionary categories that have at least 1 dictionary term for at least 1 document.
aian_dfm_trim <- aian_dfm %>%
  dfm_trim(min_termfreq = 1, min_docfreq = 1, verbose = TRUE)

# We could also group up our dfm by another variable for analysis.
aian_dfm_group <- aian_dfm %>%
  dfm_group(groups = MarketName, verbose = TRUE)

# Convert a dfm to a data.frame so we can export it to Excel or simply save for later:
aian_dfm.df <- aian_dfm %>%
  convert(to = "data.frame")

# FIX YOUR FILE PATH!
write_xlsx(aian_dfm.df, "C:/Proton Drive/My files/Coursework R Projects/JOUR8500 Comp Methods/aian_dfm_example.xlsx")
