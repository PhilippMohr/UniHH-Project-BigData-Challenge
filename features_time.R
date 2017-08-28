### add time related features to train and test dataframes
# note some NaN to handle later on

### mean time diff to prev bid ###
train$time_diff_mean <- sapply(train$bidder_id, function(id) mean((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), na.rm = TRUE))
test$time_diff_mean <- sapply(test$bidder_id, function(id) mean((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), na.rm = TRUE))

### 0.1 quantile of time diff to prev ###
train$time_diff_10_quantile <- sapply(train$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), 0.1, na.rm = TRUE))
test$time_diff_10_quantile <- sapply(test$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), 0.1, na.rm = TRUE))

### 0.25 quantile of time diff to prev bid ###
train$time_diff_25_quantile <- sapply(train$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), 0.25, na.rm = TRUE))
test$time_diff_25_quantile <- sapply(test$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid"]), 0.25, na.rm = TRUE))


### quota of time diff under 2 to all bids ###
train$quota_fast_bids_t2 <- sapply(train$bidder_id, CalcQuotaOfFastBids)
test$quota_fast_bids_t2 <- sapply(test$bidder_id, CalcQuotaOfFastBids)

### quota of time diff under 5 to all bids ###
train$quota_fast_bids_t5 <- sapply(train$bidder_id, function(id) CalcQuotaOfFastBids(id, 5))
test$quota_fast_bids_t5 <- sapply(test$bidder_id, function(id) CalcQuotaOfFastBids(id, 5))


### mean time diff to prev bid by bidder ###
train$time_diff_bidder_mean <- sapply(train$bidder_id, function(id) mean((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), na.rm = TRUE))
test$time_diff_bidder_mean <- sapply(test$bidder_id, function(id) mean((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), na.rm = TRUE))

### 0.05 quantile of time diff to prev by bidder ###
train$time_diff_bidder_05_quantile <- sapply(train$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.05, na.rm = TRUE))
test$time_diff_bidder_05_quantile <- sapply(test$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.05, na.rm = TRUE))

### 0.1 quantile of time diff to prev by bidder ###
train$time_diff_bidder_10_quantile <- sapply(train$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.1, na.rm = TRUE))
test$time_diff_bidder_10_quantile <- sapply(test$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.1, na.rm = TRUE))

### 0.25 quantile of time diff to prev bid by bidder ###
train$time_diff_bidder_25_quantile <- sapply(train$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.25, na.rm = TRUE))
test$time_diff_bidder_25_quantile <- sapply(test$bidder_id, function(id) quantile((bids[bids$bidder_id == id, "time_diff_to_prev_bid_by_bidder"]), 0.25, na.rm = TRUE))
