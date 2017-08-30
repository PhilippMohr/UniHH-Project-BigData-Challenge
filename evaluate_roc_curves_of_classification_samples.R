### evaluate various decision tree models

### calculate area under curve for all
apply(data.frame(prediction.tree.t70.num,
                 prediction.tree.t70.over.num,
                 prediction.tree.t70.under.num,
                 prediction.tree.t70.both.num,
                 prediction.tree.t70.rose.num), 
      2, function(x) roc.curve(train.30$outcome, x))
