### evaluate various neural nets

### calculate area under curve for all
apply(data.frame(prediction.nnet.neurons.1000,
                 prediction.nnet.neurons.1000.b,
                 prediction.nnet.neurons.1000.c,
                 prediction.nnet.neurons.2000,
                 prediction.nnet.neurons.2000.b,
                 prediction.nnet.neurons.2000.c,
                 prediction.nnet.neurons.30.30,
                 prediction.nnet.neurons.30.30.b,
                 prediction.nnet.neurons.30.30.c,
                 prediction.nnet.neurons.10.10.10,
                 prediction.nnet.neurons.10.10.10.b,
                 prediction.nnet.neurons.10.10.10.c,
                 prediction.nnet.neurons.15.15.15,
                 prediction.nnet.neurons.15.15.15.b,
                 prediction.nnet.neurons.15.15.15.c,
                 prediction.nnet.neurons.20.20.20,
                 prediction.nnet.neurons.20.20.20.b,
                 prediction.nnet.neurons.20.20.20.c,
                 prediction.nnet.neurons.7.7.7.7,
                 prediction.nnet.neurons.7.7.7.7.b,
                 prediction.nnet.neurons.7.7.7.7.c,
                 prediction.nnet.neurons.10.10.10.10,
                 prediction.nnet.neurons.10.10.10.10.b,
                 prediction.nnet.neurons.10.10.10.10.c,
                 prediction.nnet.neurons.5.5.5.5.5,
                 prediction.nnet.neurons.5.5.5.5.5.b,
                 prediction.nnet.neurons.5.5.5.5.5.c
                 ),
      2, function(x) roc.curve(train.30$outcome, x)
)
