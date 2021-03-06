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

### create helper variables for colnames and formulas
source("features_helper_variables.R")

### analyse numeric features humans vs robots
source("features_basic_analysis.R")

### create advanced features
source("features_advanced.R")

### create factors and replace na
source("features_factors_and_rm_na.R")

### 
# first try rpart
# first try rforest
# first try neuralnet

### split train data set into new train and test
source("data_split_train_data_set.R")

### handle imbalanced classification with ROSE
source("data_imbalanced_classification_rose.R")

### create trees and predictions for various train data sets
source("evaluate_create_trees_and_predictions.R")

### create random forests and predictions for various train data sets
source("evaluate_create_random_forests_and_predictions.R")

### evaluate tree and rforest predictions with roc curves and f measure
source("evaluate_roc_curves_of_classification_samples.R")

### create neural nets and predictions for various neuron layer configurations
source("evaluate_create_neural_nets_various_layers.R")

### evaluate neuralnet predictions with roc curves and f measure
source("evaluate_roc_curves_of_nnets_various_layers.R")

### EOF