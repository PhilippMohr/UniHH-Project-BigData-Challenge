### create helper variables

### helper variable for all current useful stats in train and test dataset
train.colnames.stats <- colnames(train)[5:length(colnames(train))]

### helper variable for current numeric stats in train and test dataset
train.colnames.stats.numeric <- train.colnames.stats[c(1,2,4,6,8,10,12,14:(length(train.colnames.stats)))]

### helper variable for current chr stats in train and test dataset
train.colnames.stats.chr <- train.colnames.stats[c(3,5,7,9,11,13)]


### helper variables for formulas with colnames of train ###

tree.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

tree.formula.all <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats))))

nnet.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

rforest.formula.numeric <-  as.formula(paste("as.factor(outcome) ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))
