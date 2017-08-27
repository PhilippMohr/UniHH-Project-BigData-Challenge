### add time related features

### add column: time diff to previous bid in same auction ###

### save current bids column order
bids.column.order <- colnames(bids)

### order bids rows by auction and bid_id
bids <- bids[order(bids$auction, bids$bid_id), ]

### add column with time diffs
bids$time_diff_to_prev_bid <- c(0, diff(bids$time))

### convert to kTimeunit
bids$time_diff_to_prev_bid <- bids$time_diff_to_prev_bid / kTimeunit

### add column with previous bid's auction
bids$prev_bid_auction <- c(0,bids$auction[1:length(bids$auction)-1])

### set time diffs to NA, if prev bid not of same auction
bids[(bids$prev_bid_auction!=bids$auction), "time_diff_to_prev_bid"] <- NA

### restore old row order of bids
bids <- bids[order(bids$bid_id), ]
