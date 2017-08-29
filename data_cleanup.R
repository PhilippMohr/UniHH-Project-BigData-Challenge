### data cleanup

### bids ###

### rename empty country
bids$country[bids$country == ""] <- "none"


### train ###

### remove rows where bidder_id is not in bids
train <- train[train$bidder_id %in% bids$bidder_id,]

# clean test later
