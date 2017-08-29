### first try with decision trees

tree.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

tree.0828.firsttry <- rpart(tree.formula.numeric, data = train, method = "anova")

prp(tree.0828.firsttry, extra = 101)

prediction.0828.firsttry <- predict(tree.0828.firsttry, test)

submission.0828.firsttry <- samplesubmission

submission.0828.firsttry$prediction <- prediction.0828.firsttry

write.csv(submission.0828.firsttry, file = "submisson_0828_firsttry.csv", row.names = FALSE)

### with all stats

tree.formula.all <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats))))

tree.0829.firsttry.all <- rpart(tree.formula.all, data = train, method = "anova")

prp(tree.0829.firsttry.all)

prediction.0829.firsttry.all <- predict(tree.0829.firsttry.all, test)

submission.0829.firsttry.all <- samplesubmission

submission.0829.firsttry.all$prediction <- prediction.0829.firsttry.all

write.csv(submission.0829.firsttry.all, file = "submisson_0829_firsttry_all.csv", row.names = FALSE)
