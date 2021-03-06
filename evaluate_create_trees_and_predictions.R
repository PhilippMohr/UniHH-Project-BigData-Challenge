### create decision trees for various train data sets

### train.70
tree.t70.num <- rpart(tree.formula.numeric, train.70, method = "anova")
prediction.tree.t70.num <- predict(tree.t70.num, newdata = train.30)

### train.70.over
tree.t70.over.num <- rpart(tree.formula.numeric, train.70.over, method = "anova")
prediction.tree.t70.over.num <- predict(tree.t70.over.num, newdata = train.30)

### train.70.under
tree.t70.under.num <- rpart(tree.formula.numeric, train.70.under, method = "anova")
prediction.tree.t70.under.num <- predict(tree.t70.under.num, newdata = train.30)

### train.70.both
tree.t70.both.num <- rpart(tree.formula.numeric, train.70.both, method = "anova")
prediction.tree.t70.both.num <- predict(tree.t70.both.num, newdata = train.30)

### train.70.rose
tree.t70.rose.num <- rpart(tree.formula.numeric, train.70.rose, method = "anova")
prediction.tree.t70.rose.num <- predict(tree.t70.rose.num, newdata = train.30)
