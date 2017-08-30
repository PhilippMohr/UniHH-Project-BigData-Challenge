### split train into new train and new test data sets

### reminder: humans vs robots in train
table(train$outcome)

### set seed
set.seed(101)

### create new train set out of 70% of old train set
train.70 <- train[sample(1:nrow(train), round(nrow(train)*0.7)), ]

### create new test set with remaining 30% if old train set
train.30 <- train[!train$bidder_id %in% train.70$bidder_id, ]

### humans vs robots in new data sets
table(train.70$outcome)
table(train.30$outcome)
