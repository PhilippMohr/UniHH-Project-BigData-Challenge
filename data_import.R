### load csv-files into dataframes
# download csv-files to your working directory
# https://www.kaggle.com/c/facebook-recruiting-iv-human-or-bot/data

bids <- read.csv("bids.csv", header = TRUE, stringsAsFactors = FALSE)
train <- read.csv("train.csv", header = TRUE, stringsAsFactors = FALSE)
test <- read.csv("test.csv", header = TRUE, stringsAsFactors = FALSE)
samplesubmission <- read.csv("sampleSubmission.csv", header = TRUE, stringsAsFactors = FALSE)
