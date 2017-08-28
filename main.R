###
### UniHH-Project-BigData-Challenge
###
#
# code:
# https://github.com/PhilippMohr/UniHH-Project-BigData-Challenge/
#
# data files:
# https://www.kaggle.com/c/facebook-recruiting-iv-human-or-bot/data
#
###

### init # set your local working directory and libraries!
source("_init.R")

### save dataframes locally
#source("_save_data.R")
### load dataframes locally
#source("_load_data.R")

### import csv data
source("data_import.R")

### data cleanup
source("data_cleanup.R")

### a first look at the data
source("data_first_glance.R", echo = TRUE)

### analyse time in bids
source("data_time_analysis.R", echo = TRUE)

### define functions to help create basic features
source("features_basic_functions.R")

### add basic features to train and test
source("features_basic.R")

### define functions and add time stats to bids
source("features_time_stats_and_functions.R")

### add time features to train and test
source("features_time.R")

### analyse numeric features humans vs robots
source("features_basic_analysis.R")

### EOF