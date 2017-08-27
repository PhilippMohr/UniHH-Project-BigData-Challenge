### add basic features to train and test dataframes

### number of bids ###
train$number_of_bids <- sapply(train$bidder_id, CalcNumberOfBids)
test$number_of_bids <- sapply(test$bidder_id, CalcNumberOfBids)


### number of auctions ###
train$number_of_auctions <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "auction")
test$number_of_auctions <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "auction")

### most frequent auction ###
train$most_frequent_auction <- CalcFeatureMostFrequentItem(train$bidder_id, "auction")
test$most_frequent_auction <- CalcFeatureMostFrequentItem(test$bidder_id, "auction")


### number of merchandise ###
train$number_of_merchandise <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "merchandise")
test$number_of_merchandise <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "merchandise")

### most frequent merchandise ###
train$most_frequent_merchandise <- CalcFeatureMostFrequentItem(train$bidder_id, "merchandise")
test$most_frequent_merchandise <- CalcFeatureMostFrequentItem(test$bidder_id, "merchandise")


### number of device ###
train$number_of_devices <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "device")
test$number_of_devices <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "device")

### most frequent device ###
train$most_frequent_device <- CalcFeatureMostFrequentItem(train$bidder_id, "device")
test$most_frequent_device <- CalcFeatureMostFrequentItem(test$bidder_id, "device")


### number of countries ###
train$number_of_countries <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "country")
test$number_of_countries <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "country")

### most frequent country ###
train$most_frequent_country <- CalcFeatureMostFrequentItem(train$bidder_id, "country")
test$most_frequent_country <- CalcFeatureMostFrequentItem(test$bidder_id, "country")


### number of ip ###
train$number_of_ips <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "ip")
test$number_of_ips <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "ip")

### most frequent ip ###
train$most_frequent_ip <- CalcFeatureMostFrequentItem(train$bidder_id, "ip")
test$most_frequent_ip <- CalcFeatureMostFrequentItem(test$bidder_id, "ip")


### number of url ###
train$number_of_urls <- CalcFeatureNumberOfDifferentItems(train$bidder_id, "url")
test$number_of_urls <- CalcFeatureNumberOfDifferentItems(test$bidder_id, "url")

### most frequent url ###
train$most_frequent_url <- CalcFeatureMostFrequentItem(train$bidder_id, "url")
test$most_frequent_url <- CalcFeatureMostFrequentItem(test$bidder_id, "url")
