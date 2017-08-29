### a first look at the basic features

### helper variable for all current useful stats in train and test dataset
train.colnames.stats <- colnames(train)[5:length(colnames(train))]

### helper variable for current numeric stats in train and test dataset
train.colnames.stats.numeric <- train.colnames.stats[c(1,2,4,6,8,10,12,14:(length(train.colnames.stats)))]

### helper variable for current chr stats in train and test dataset
train.colnames.stats.chr <- train.colnames.stats[c(3,5,7,9,11,13)]


### calc stats for all
train.mean.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
#train.q20.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
#train.q80.all <- apply(train[, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### calc stats for humans
train.mean.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
train.q20.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
train.q80.humans <- apply(train[train$outcome == 0, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### calc stats for robots
train.mean.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) mean(x, na.rm = TRUE))
train.median.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.5, na.rm = TRUE))
train.q20.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.2, na.rm = TRUE))
train.q80.robots <- apply(train[train$outcome == 1, train.colnames.stats.numeric], 2, function(x) quantile(x, 0.8, na.rm = TRUE))

### create dataframe
train.stats.numeric <- data.frame(train.mean.all, train.mean.humans, train.mean.robots, train.median.all, train.median.humans, train.median.robots, 
                                  train.q20.humans, train.q80.humans, train.q20.robots, train.q80.robots)

### shorten colnames of data frame
colnames(train.stats.numeric) <- sapply(colnames(train.stats.numeric), function(x) gsub("train.", "", x, fixed = TRUE))

### print data frame
print(round(train.stats.numeric, 2))
