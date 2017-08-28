### add time related features

### add column: time diff to previous bid in same auction ###

### order bids rows by auction and bid_id
bids <- bids[order(bids$auction, bids$bid_id), ]

### add column with time diffs
bids$time_diff_to_prev_bid <- c(0, diff(bids$time))

### convert to kTimeunit
bids$time_diff_to_prev_bid <- bids$time_diff_to_prev_bid / kTimeunit

### add column with previous bid's auction
bids$prev_bid_auction <- c(0, bids$auction[1:nrow(bids)-1])

### set time diffs to NA, if prev bid not of same auction
bids[(bids$prev_bid_auction!=bids$auction), "time_diff_to_prev_bid"] <- NA


### add column: time diff to own previous bid ###

### order bids rows by auction and bid_id
bids <- bids[order(bids$bidder_id, bids$bid_id), ]

### add column with time diffs to previous bid by bidder
bids$time_diff_to_prev_bid_by_bidder <- c(0, diff(bids$time)/kTimeunit)

### add column with previous bid's bidder
bids$prev_bid_bidder <- c(0, bids$bidder_id[1:nrow(bids)-1])

### set time diffs to NA, if prev bid not by same bidder
bids[(bids$prev_bid_bidder != bids$bidder_id), "time_diff_to_prev_bid_by_bidder"] <- NA


### restore old row order of bids
bids <- bids[order(bids$bid_id), ]


### functions to assist calculating features ###

CalcNumberOfFastBids <- function(id, t = 2) {
  # Counts all fast bids by a bidder.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #   t:  Max allowed time diff in kTimeunits for a fast bid. Default is 2.
  #
  # Returns:
  #   Number of bids by bidder with time diff under t.
  length(bids$time_diff_to_prev_bid[bids$bidder_id == id & bids$time_diff_to_prev_bid <= t])
}

CalcQuotaOfFastBids <- function(id, t = 2) {
  # Computes quota of fast bids to all bids by a bidder.
  #
  # Args:
  #   id: The bidder's bidder_id.
  #   t:  Max allowed time diff in kTimeunits for a fast bid. Default is 2.
  #
  # Returns:
  #   Number of fast bids divided by number of all bids plus 0.01.
  CalcNumberOfFastBids(id, t) / (CalcNumberOfBids(id) + 0.01)
}
