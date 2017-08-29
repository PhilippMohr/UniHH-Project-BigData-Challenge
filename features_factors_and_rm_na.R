### convert chr feature columns to factors and remove NAs in features

### add outcome column to test
test$outcome <- NA

### order test columns according to train
test <- test[, colnames(train)]

### merge both data frames
train <- rbind(train, test)

### replace NAs in chr feature columns with "is_NA"
for (j in train.colnames.stats.chr) {
  train[,j][is.na(train[,j])] <- "is_NA"
}

### convert all chr feature columns to factors
for (j in train.colnames.stats.chr) {
  train[ , j] <- as.factor(train[ , j])
}

### split test data frame
test <- train[is.na(train$outcome), ]

### split train data frame
train <- train[!is.na(train$outcome), ]


### replace numeric NAs in train and test with median of train column
for (j in train.colnames.stats.numeric) {
  train[,j][is.na(train[,j])] <- median(train[,j], na.rm = TRUE)
}

for (j in train.colnames.stats.numeric) {
  test[,j][is.na(test[,j])] <- median(train[,j], na.rm = TRUE)
}
