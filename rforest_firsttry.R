### first try with random forest

rforest.formula.numeric <-  as.formula(paste("as.factor(outcome) ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

rforest.0828.firsttry <- randomForest(rforest.formula.numeric, data = train, importance = TRUE, ntree = 2000)

prediction.0828.firsttry.rf <- predict(tree.0828.firsttry, test)

varImpPlot(rforest.0828.firsttry)

plot(rforest.0828.firsttry)

submission.0828.firsttry.rf <- samplesubmission

submission.0828.firsttry.rf$prediction <- prediction.0828.firsttry.rf

write.csv(submission.0828.firsttry.rf, file = "submisson_0828_firsttry_rf.csv", row.names = FALSE)