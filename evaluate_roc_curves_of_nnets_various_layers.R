### evaluate various neural nets

### calculate area under curve for all
apply(data.frame(prediction.nnet.neurons.1000,
                 prediction.nnet.neurons.1000.b,
                 prediction.nnet.neurons.1000.c,
                 prediction.nnet.neurons.2000,
                 prediction.nnet.neurons.10.10.10,
                 prediction.nnet.neurons.15.15.15,
                 prediction.nnet.neurons.20.20.20,
                 prediction.nnet.neurons.7.7.7.7,
                 prediction.nnet.neurons.10.10.10.10,
                 prediction.nnet.neurons.5.5.5.5.5),
      2, function(x) roc.curve(train.30$outcome, x)
)
