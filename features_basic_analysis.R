### a first look at the basic features

### helper variable for current numeric stats in train dataset
train.colnames.stats.numeric <- c("number_of_bids", "number_of_auctions", "number_of_merchandise", "number_of_devices", "number_of_countries", "number_of_ips", "number_of_urls", 
  "time_diff_mean", "time_diff_10_quantile", "time_diff_25_quantile", "quota_fast_bids_t2", "quota_fast_bids_t5", "time_diff_bidder_mean", 
  "time_diff_bidder_05_quantile", "time_diff_bidder_10_quantile", "time_diff_bidder_25_quantile")

### calc stats for all
train.mean.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
#train.q20.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
#train.q80.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### calc stats for humans
train.mean.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
train.q20.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
train.q80.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### calc stats for robots
train.mean.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
train.q20.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
train.q80.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### create dataframe
train.stats.numeric <- data.frame(train.mean.all, train.mean.humans, train.mean.robots, train.median.all, train.median.humans, train.median.robots, 
                                  train.q20.humans, train.q80.humans, train.q20.robots, train.q80.robots)

### shorten colnames of data frame
colnames(train.stats.numeric) <- sapply(colnames(train.stats.numeric), function(x) gsub("train.", "", x, fixed = TRUE))

### print data frame
print(round(train.stats.numeric, 2))
