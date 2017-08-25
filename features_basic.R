### creating and analysing the first basic features

###
### country ###
###

### number of unique countries for a bidder_id ###

### getter
getNumberOfCountries <- function(id) {
  length(unique(bids[bids$bidder_id==id, "country"]))
  }

### inspect value for first ten entries of train
#sapply(train$bidder_id[1:10], getNumberOfCountries)


### most frequent country for a bidder_id ###

### getter
getMostFrequentCountry <- function(id) {
  names(apply(table(bids[bids$bidder_id==id,"country"]),1,which.max) )
  }