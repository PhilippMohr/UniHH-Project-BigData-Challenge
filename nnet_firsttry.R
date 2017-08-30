### first try with neural nets

nnet.formula.numeric <-  as.formula(paste("outcome ~ ", gsub(",", " +", toString(train.colnames.stats.numeric))))

nnet.firsttry.num <- neuralnet(nnet.formula.numeric, train, hidden = c(10,10,10), linear.output = FALSE)

plot(nnet.firsttry.num)

prediction.nnet.firsttry.num <- compute(nnet.firsttry.num, test[ , train.colnames.stats.numeric])

submission.nnet.firsttry.num <- samplesubmission

submission.nnet.firsttry.num$prediction <- prediction.nnet.firsttry.num$net.result

write.csv(submission.nnet.firsttry.num, file = "submisson_0830_firsttry_nnet_num.csv", row.names = FALSE)
