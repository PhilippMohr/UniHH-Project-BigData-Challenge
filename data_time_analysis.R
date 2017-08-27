### a closer look at the time

### table of time differences between bids
table(diff(bids$time,16))
# note all are multiples of ~52631578 

### guess how to calculate ~52631578
print(1000000000/19, 16)

### define timeunit
kTimeunit <- 1000000000/19

### plot the time of first two million bids
plot(bids[1:2000000,"time"])

### highlight repeating wave pattern with vertical lines
abline(v=750000, col="green")
abline(v=1500000, col="green")

### calculate length of wave in time units
(bids[1500000,"time"] - bids[750000,"time"])/kTimeunit

### note it's about the amount of seconds in a day
60*60*24
