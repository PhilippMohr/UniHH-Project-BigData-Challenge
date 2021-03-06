### create neural networks with different parameters

### 1000
nnet.neurons.1000 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(1000), linear.output = FALSE)
prediction.nnet.neurons.1000 <- compute(nnet.neurons.1000, train.30[ , train.colnames.stats.numeric])$net.result

### 1000 b
nnet.neurons.1000.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(1000), linear.output = FALSE)
prediction.nnet.neurons.1000.b <- compute(nnet.neurons.1000.b, train.30[ , train.colnames.stats.numeric])$net.result

### 1000 c
nnet.neurons.1000.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(1000), linear.output = FALSE)
prediction.nnet.neurons.1000.c <- compute(nnet.neurons.1000.c, train.30[ , train.colnames.stats.numeric])$net.result


### 2000
nnet.neurons.2000 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(2000), linear.output = FALSE)
prediction.nnet.neurons.2000 <- compute(nnet.neurons.2000, train.30[ , train.colnames.stats.numeric])$net.result

### 2000 b
nnet.neurons.2000.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(2000), linear.output = FALSE)
prediction.nnet.neurons.2000.b <- compute(nnet.neurons.2000.b, train.30[ , train.colnames.stats.numeric])$net.result

### 2000 c
nnet.neurons.2000.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(2000), linear.output = FALSE)
prediction.nnet.neurons.2000.c <- compute(nnet.neurons.2000.c, train.30[ , train.colnames.stats.numeric])$net.result


### 30 30
nnet.neurons.30.30 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(30,30), linear.output = FALSE)
prediction.nnet.neurons.30.30 <- compute(nnet.neurons.30.30, train.30[ , train.colnames.stats.numeric])$net.result

### 30 30 b
nnet.neurons.30.30.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(30,30), linear.output = FALSE)
prediction.nnet.neurons.30.30.b <- compute(nnet.neurons.30.30.b, train.30[ , train.colnames.stats.numeric])$net.result

### 30 30 c
nnet.neurons.30.30.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(30,30), linear.output = FALSE)
prediction.nnet.neurons.30.30.c <- compute(nnet.neurons.30.30.c, train.30[ , train.colnames.stats.numeric])$net.result


### 10 10 10
nnet.neurons.10.10.10 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10 <- compute(nnet.neurons.10.10.10, train.30[ , train.colnames.stats.numeric])$net.result

### 10 10 10 b
nnet.neurons.10.10.10.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10.b <- compute(nnet.neurons.10.10.10.b, train.30[ , train.colnames.stats.numeric])$net.result

### 10 10 10 c
nnet.neurons.10.10.10.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10.c <- compute(nnet.neurons.10.10.10.c, train.30[ , train.colnames.stats.numeric])$net.result


### 15 15 15
nnet.neurons.15.15.15 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(15,15,15), linear.output = FALSE)
prediction.nnet.neurons.15.15.15 <- compute(nnet.neurons.15.15.15, train.30[ , train.colnames.stats.numeric])$net.result

### 15 15 15 b
nnet.neurons.15.15.15.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(15,15,15), linear.output = FALSE)
prediction.nnet.neurons.15.15.15.b <- compute(nnet.neurons.15.15.15.b, train.30[ , train.colnames.stats.numeric])$net.result

### 15 15 15 c
nnet.neurons.15.15.15.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(15,15,15), linear.output = FALSE)
prediction.nnet.neurons.15.15.15.c <- compute(nnet.neurons.15.15.15.c, train.30[ , train.colnames.stats.numeric])$net.result


### 20 20 20
nnet.neurons.20.20.20 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(20,20,20), linear.output = FALSE)
prediction.nnet.neurons.20.20.20 <- compute(nnet.neurons.20.20.20, train.30[ , train.colnames.stats.numeric])$net.result

### 20 20 20 b
nnet.neurons.20.20.20.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(20,20,20), linear.output = FALSE)
prediction.nnet.neurons.20.20.20.b <- compute(nnet.neurons.20.20.20.b, train.30[ , train.colnames.stats.numeric])$net.result

### 20 20 20 c
nnet.neurons.20.20.20.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(20,20,20), linear.output = FALSE)
prediction.nnet.neurons.20.20.20.c <- compute(nnet.neurons.20.20.20.c, train.30[ , train.colnames.stats.numeric])$net.result


### 7 7 7 7
nnet.neurons.7.7.7.7 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(7,7,7,7), linear.output = FALSE)
prediction.nnet.neurons.7.7.7.7 <- compute(nnet.neurons.7.7.7.7, train.30[ , train.colnames.stats.numeric])$net.result

### 7 7 7 7 b
nnet.neurons.7.7.7.7.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(7,7,7,7), linear.output = FALSE)
prediction.nnet.neurons.7.7.7.7.b <- compute(nnet.neurons.7.7.7.7.b, train.30[ , train.colnames.stats.numeric])$net.result

### 7 7 7 7 c
nnet.neurons.7.7.7.7.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(7,7,7,7), linear.output = FALSE)
prediction.nnet.neurons.7.7.7.7.c <- compute(nnet.neurons.7.7.7.7.c, train.30[ , train.colnames.stats.numeric])$net.result


### 10 10 10 10
nnet.neurons.10.10.10.10 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10.10 <- compute(nnet.neurons.10.10.10.10, train.30[ , train.colnames.stats.numeric])$net.result

### 10 10 10 10 b
nnet.neurons.10.10.10.10.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10.10.b <- compute(nnet.neurons.10.10.10.10.b, train.30[ , train.colnames.stats.numeric])$net.result

### 10 10 10 10 c
nnet.neurons.10.10.10.10.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(10,10,10,10), linear.output = FALSE)
prediction.nnet.neurons.10.10.10.10.c <- compute(nnet.neurons.10.10.10.10.c, train.30[ , train.colnames.stats.numeric])$net.result


### 5 5 5 5 5
nnet.neurons.5.5.5.5.5 <- neuralnet(nnet.formula.numeric, train.70, hidden = c(5,5,5,5,5), linear.output = FALSE)
prediction.nnet.neurons.5.5.5.5.5 <- compute(nnet.neurons.5.5.5.5.5, train.30[ , train.colnames.stats.numeric])$net.result

### 5 5 5 5 5 b
nnet.neurons.5.5.5.5.5.b <- neuralnet(nnet.formula.numeric, train.70, hidden = c(5,5,5,5,5), linear.output = FALSE)
prediction.nnet.neurons.5.5.5.5.5.b <- compute(nnet.neurons.5.5.5.5.5.b, train.30[ , train.colnames.stats.numeric])$net.result

### 5 5 5 5 5 c
nnet.neurons.5.5.5.5.5.c <- neuralnet(nnet.formula.numeric, train.70, hidden = c(5,5,5,5,5), linear.output = FALSE)
prediction.nnet.neurons.5.5.5.5.5.c <- compute(nnet.neurons.5.5.5.5.5.c, train.30[ , train.colnames.stats.numeric])$net.result
