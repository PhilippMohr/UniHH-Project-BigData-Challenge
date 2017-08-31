### define functions to help calculate features

CalcNumberOfDifferentItems <- function(id, column) {
  # Counts all different items of all bids from a bidder regarding one column.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #   column: The queried column of the dataset, e.g. "country".
  #
  # Returns:
  #   The number of unique items of all bids from the bidder.
  length(unique(bids[bids$bidder_id==id, column]))
}

CalcFeatureNumberOfDifferentItems <- function(idvector, column) {
  # Creates a vector of values from function CalcNumberOfDifferentItems.
  #
  # Args: 
  #   idvector: Vector of bidder_ids, e.g. train$bidder_id.
  #   column: The queried column, e.g. "country".
  #
  # Returns:
  #   A vector with feature values.
  sapply(idvector, function(x) CalcNumberOfDifferentItems(x, column))
}

CalcMostFrequentItem <- function(id, column) {
  # Computes most frequent item of all bids by a bidder regarding one column.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #   column: The queried column of the dataset, e.g. "country".
  #
  # Returns:
  #   The name of the most frequent item of all bids from the bidder regarding the column or NA.
  if (is.null(names(which.max(table(bids[bids$bidder_id==id, column]))))) {
    return(NA)}
  else {
    return(names(which.max(table(bids[bids$bidder_id==id, column]))))
  }
}

CalcFeatureMostFrequentItem <- function(idvector, column) {
  # Creates a vector of values from function CalcMostFrequentItem.
  #
  # Args: 
  #   idvector: Vector of bidder_ids, e.g. train$bidder_id.
  #   column: The queried column, e.g. "country".
  #
  # Returns:
  #   A vector with feature values.
  unlist(lapply(idvector, function(x) CalcMostFrequentItem(x, column)))
}

CalcNumberOfBids <- function(id) {
  # Computes number of all bids by a bidder.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #
  # Returns:
  #   Number of all bids of the bidder.
  nrow(subset(bids,bidder_id==id))
}
