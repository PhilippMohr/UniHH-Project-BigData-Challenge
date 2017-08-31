### evaluate various decision tree models

### calculate area under curve for all trees
apply(data.frame(prediction.tree.t70.num,
                 prediction.tree.t70.over.num,
                 prediction.tree.t70.under.num,
                 prediction.tree.t70.both.num,
                 prediction.tree.t70.rose.num), 
      2, function(x) roc.curve(train.30$outcome, x)
)

### calculate precision, recall and f measure for all
apply(data.frame(prediction.tree.t70.num,
                 prediction.tree.t70.over.num,
                 prediction.tree.t70.under.num,
                 prediction.tree.t70.both.num,
                 prediction.tree.t70.rose.num), 
      2, function(x) accuracy.meas(train.30$outcome, x)
)

### calculate area under curve for all random forests
apply(data.frame(prediction.rforest.t70.num,
                 prediction.rforest.t70.over.num,
                 prediction.rforest.t70.under.num,
                 prediction.rforest.t70.both.num,
                 prediction.rforest.t70.rose.num), 
      2, function(x) roc.curve(train.30$outcome, x)
)

### calculate precision, recall and f measure for all random forests
apply(data.frame(prediction.rforest.t70.num,
                 prediction.rforest.t70.over.num,
                 prediction.rforest.t70.under.num,
                 prediction.rforest.t70.both.num,
                 prediction.rforest.t70.rose.num), 
      2, function(x) accuracy.meas(train.30$outcome, x)
)
