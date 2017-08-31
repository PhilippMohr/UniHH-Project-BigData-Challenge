### create random forests for various train data sets

### train.70
rforest.t70.num <- randomForest(rforest.formula.numeric, data = train.70, importance = TRUE, ntree = 2000)
prediction.rforest.t70.num <- predict(rforest.t70.num, newdata = train.30)

### train.70.over
rforest.t70.over.num <- randomForest(rforest.formula.numeric, data = train.70.over, importance = TRUE, ntree = 2000)
prediction.rforest.t70.over.num <- predict(rforest.t70.over.num, newdata = train.30)

### train.70.under
rforest.t70.under.num <- randomForest(rforest.formula.numeric, data = train.70.under, importance = TRUE, ntree = 2000)
prediction.rforest.t70.under.num <- predict(rforest.t70.under.num, newdata = train.30)

### train.70.both
rforest.t70.both.num <- randomForest(rforest.formula.numeric, data = train.70.both, importance = TRUE, ntree = 2000)
prediction.rforest.t70.both.num <- predict(rforest.t70.both.num, newdata = train.30)

### train.70.rose
rforest.t70.rose.num <- randomForest(rforest.formula.numeric, data = train.70.rose, importance = TRUE, ntree = 2000)
prediction.rforest.t70.rose.num <- predict(rforest.t70.rose.num, newdata = train.30)
