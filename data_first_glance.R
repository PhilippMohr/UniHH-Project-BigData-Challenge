### A first look at the data

###
### bids ###
###

### overview of columns
str(bids)

### first five rows
print(bids[1:5,])

### unique entries in each column
sapply(bids, function(x) length(unique(x)))

### check for NA
table(is.na(bids))


### bid_id ###

### structure of bid_ids
table(diff(bids$bid_id))


### bidder_id ###

### plots of number of bids per bidder
plot(table(bids$bidder_id))
plot(sort(table(bids$bidder_id)))

### stats of number of bids per bidder
quantile(table(bids$bidder_id))
mean(table(bids$bidder_id))


### auction ###

### plots of number of bids per auction
plot(table(bids$auction))
plot(sort(table(bids$auction)))

### stats of number of bids per auction
quantile(table(bids$auction))
mean(table(bids$auction))


### merchandise ###

### bids by merchandise
sort(table(bids$merchandise), decreasing = TRUE)


### device ###

### stats of number of bids per device
quantile(table(bids$device))
mean(table(bids$device))


### time ###

### plot of time and bid_id
plot(bids$time)


### country ###

### number of bids by country
sort(table(bids$country), decreasing = TRUE)
#! note the "" country


### ip ###

### stats of number of bids per ip
quantile(table(bids$ip))
mean(table(bids$ip))


### url ###

### stats of number of bids per url
quantile(table(bids$url))
mean(table(bids$url))


###
### train
###

### overview of columns
str(train)

### first five rows
print(train[1:5,])

### unique entries in each column
sapply(train, function(x) length(unique(x)))

### number of humans (0) and bots (1)
table(train$outcome)

### bidder_ids that do not also appear in bids
nrow(train[!(train$bidder_id %in% bids$bidder_id), ])
train[!(train$bidder_id %in% bids$bidder_id),"outcome"]

###
### test
###

### overview of columns
str(test)

### first five rows
print(test[1:5,])

### unique entries in each column
sapply(test, function(x) length(unique(x)))

### bidder_ids that do not also appear in bids
nrow(test[!(test$bidder_id %in% bids$bidder_id), ])

### bidder_ids that also appear in train
nrow(test[test$bidder_id %in% train$bidder_id, ])

### EOF