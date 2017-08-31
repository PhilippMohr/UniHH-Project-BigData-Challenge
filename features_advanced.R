### create advanced features


###
### mean number of bids per unique item for each column ###
###

### defince functions to help calculate features ###

CalcMeanBidsPerItem <- function(id, column) {
  # Calculates mean bids per item of all bids from a bidder regarding one column.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #   column: The queried column of the dataset, e.g. "country".
  #
  # Returns:
  #   The mean number of bids per item from the bidder.
  mean(table(bids[bids$bidder_id==id, column]), na.rm = TRUE)
}

CalcFeatureMeanBidsPerItem <- function(idvector, column) {
  # Creates a vector of values from function CalcMeanBidsPerItem.
  #
  # Args: 
  #   idvector: Vector of bidder_ids, e.g. train$bidder_id.
  #   column: The queried column, e.g. "country".
  #
  # Returns:
  #   A vector with feature values.
  sapply(idvector, function(x) CalcMeanBidsPerItem(x, column))
}

### mean number of bids per auction ###
train$mean_bids_per_auction <- CalcFeatureMeanBidsPerItem(train$bidder_id, "auction")
test$mean_bids_per_auction <- CalcFeatureMeanBidsPerItem(test$bidder_id, "auction")

### mean number of bids per device ###
train$mean_bids_per_device <- CalcFeatureMeanBidsPerItem(train$bidder_id, "device")
test$mean_bids_per_device <- CalcFeatureMeanBidsPerItem(test$bidder_id, "device")

### mean number of bids per country ###
train$mean_bids_per_country <- CalcFeatureMeanBidsPerItem(train$bidder_id, "country")
test$mean_bids_per_country <- CalcFeatureMeanBidsPerItem(test$bidder_id, "country")

### mean number of bids per ip ###
train$mean_bids_per_ip <- CalcFeatureMeanBidsPerItem(train$bidder_id, "ip")
test$mean_bids_per_ip <- CalcFeatureMeanBidsPerItem(test$bidder_id, "ip")

### mean number of bids per url ###
train$mean_bids_per_url <- CalcFeatureMeanBidsPerItem(train$bidder_id, "url")
test$mean_bids_per_url <- CalcFeatureMeanBidsPerItem(test$bidder_id, "url")

###
### ratio of robot vs all bids regarding one unique item of a column ###
###

### create stats vectors for each column

stats.ratio.bot.to.all.auction <- sapply(unique(bids$auction), 
       function(x) {
         nrow(bids[bids$auction==x & bids$bidder_id %in% train[train$outcome==1, "bidder_id"],]) / 
           (nrow(bids[bids$auction==x & bids$bidder_id %in% train$bidder_id,])+0.01)
       }
)

stats.ratio.bot.to.all.device <- sapply(unique(bids$device), 
       function(x) {
         nrow(bids[bids$device==x & bids$bidder_id %in% train[train$outcome==1, "bidder_id"],]) / 
           (nrow(bids[bids$device==x & bids$bidder_id %in% train$bidder_id,])+0.01)
       }
)

stats.ratio.bot.to.all.country <- sapply(unique(bids$country), 
       function(x) {
         nrow(bids[bids$country==x & bids$bidder_id %in% train[train$outcome==1, "bidder_id"],]) / 
           (nrow(bids[bids$country==x & bids$bidder_id %in% train$bidder_id,])+0.01)
       }
)

stats.ratio.bot.to.all.ip <- sapply(unique(bids$ip), 
       function(x) {
         nrow(bids[bids$ip==x & bids$bidder_id %in% train[train$outcome==1, "bidder_id"],]) / 
           (nrow(bids[bids$ip==x & bids$bidder_id %in% train$bidder_id,])+0.01)
       }
)

stats.ratio.bot.to.all.url <- sapply(unique(bids$url), 
       function(x) {
         nrow(bids[bids$url==x & bids$bidder_id %in% train[train$outcome==1, "bidder_id"],]) / 
           (nrow(bids[bids$url==x & bids$bidder_id %in% train$bidder_id,])+0.01)
       }
)

### add features ###

### country

train$most_frequent_country_bot_ratio <- sapply(train$bidder_id, function(x) {stats.ratio.bot.to.all.country[train[train$bidder_id == x, "most_frequent_country"]]})
test$most_frequent_country_bot_ratio <- sapply(test$bidder_id, function(x) {stats.ratio.bot.to.all.country[test[test$bidder_id == x, "most_frequent_country"]]})

### device

train$most_frequent_device_bot_ratio <- sapply(train$bidder_id, function(x) {stats.ratio.bot.to.all.device[train[train$bidder_id == x, "most_frequent_device"]]})
test$most_frequent_device_bot_ratio <- sapply(test$bidder_id, function(x) {stats.ratio.bot.to.all.device[test[test$bidder_id == x, "most_frequent_device"]]})

### todo: other columns

### todo: avg ratio for all bids per column

### todo?: quota of robot IPs used ###
