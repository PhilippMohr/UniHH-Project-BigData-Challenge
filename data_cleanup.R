### data cleanup

### bids ###

### rename empty country
bids$country[bids$country == ""] <- "none"


### train ###

### remove rows where bidder_id is not in bids
train <- train[train$bidder_id %in% bids$bidder_id,]

### remove possibly false humans? c("f5b2bbad20d1d7ded3ed960393bec0f40u6hn", "197e90906939267ace2422e78e8e83889znqp", "a58ace8b671a7531c88814bc86b2a34cf0crb"))

# train[train$number_of_bids > 20000, c("bidder_id", "outcome", "number_of_bids")][rev(order(train[train$number_of_bids > 20000, "number_of_bids"])),]

# quantile(train[(train$outcome==0) & !(train$bidder_id %in% c("f5b2bbad20d1d7ded3ed960393bec0f40u6hn", 
#                                                             "197e90906939267ace2422e78e8e83889znqp",
#                                                             "a58ace8b671a7531c88814bc86b2a34cf0crb")), "number_of_bids" ])

# quantile(train[(train$outcome==1) & !(train$bidder_id %in% c("f5b2bbad20d1d7ded3ed960393bec0f40u6hn",
#                                                             "197e90906939267ace2422e78e8e83889znqp",
#                                                             "a58ace8b671a7531c88814bc86b2a34cf0crb")), "number_of_bids" ])
