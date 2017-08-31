### create helper variables

### helper variable for all useful stats columns in train and test data set
# cat(colnames(train), sep = "\", \n\"") # prints current colnames
train.colnames.stats <- c("number_of_bids", 
                          "number_of_auctions", 
                          "most_frequent_auction", 
                          "number_of_merchandise", 
                          "most_frequent_merchandise", 
                          "number_of_devices", 
                          "most_frequent_device", 
                          "number_of_countries", 
                          "most_frequent_country", 
                          "number_of_ips", 
                          "most_frequent_ip", 
                          "number_of_urls", 
                          "most_frequent_url", 
                          "time_diff_mean", 
                          "time_diff_10_quantile", 
                          "time_diff_25_quantile", 
                          "quota_fast_bids_t2", 
                          "quota_fast_bids_t5", 
                          "time_diff_bidder_mean", 
                          "time_diff_bidder_05_quantile", 
                          "time_diff_bidder_10_quantile", 
                          "time_diff_bidder_25_quantile", 
                          "mean_bids_per_auction", 
                          "mean_bids_per_device", 
                          "mean_bids_per_country", 
                          "mean_bids_per_ip", 
                          "mean_bids_per_url"
                          )

### helper variable for current numeric stats in train and test dataset
train.colnames.stats.numeric <- train.colnames.stats[c(1,2,4,6,8,10,12,14:(length(train.colnames.stats)))]

### helper variable for current chr stats in train and test dataset
train.colnames.stats.chr <- train.colnames.stats[c(3,5,7,9,11,13)]


### helper variable for basic stats

train.colnames.basic.stats <- c("number_of_bids", 
                                "number_of_auctions",
                                "most_frequent_auction", 
                                "number_of_merchandise", 
                                "most_frequent_merchandise", 
                                "number_of_devices", 
                                "most_frequent_device", 
                                "number_of_countries", 
                                "most_frequent_country", 
                                "number_of_ips", 
                                "most_frequent_ip", 
                                "number_of_urls", 
                                "most_frequent_url", 
                                "time_diff_mean", 
                                "time_diff_10_quantile", 
                                "time_diff_25_quantile", 
                                "quota_fast_bids_t2", 
                                "quota_fast_bids_t5", 
                                "time_diff_bidder_mean", 
                                "time_diff_bidder_05_quantile", 
                                "time_diff_bidder_10_quantile", 
                                "time_diff_bidder_25_quantile")
train.colnames.basic.stats.num <- train.colnames.basic.stats[c(1,2,4,6,8,10,12,14:(length(train.colnames.basic.stats)))]
train.colnames.basic.stats.chr <- train.colnames.basic.stats[c(3,5,7,9,11,13)]

### helper variables for formulas with colnames of train ###

tree.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

tree.formula.all <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats))))

nnet.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

rforest.formula.numeric <-  as.formula(paste("as.factor(outcome) ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))
