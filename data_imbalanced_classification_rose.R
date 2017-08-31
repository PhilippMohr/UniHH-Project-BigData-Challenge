### handle imbalanced classification with ROSE

### reminder: humans vs robots in train.70
table(train.70$outcome)


### oversampling ###

train.70.over <- ovun.sample(outcome ~ ., data = train.70, method = "over", N = 2632, seed = 101)$data

table(train.70.over$outcome)


### undersampling ###

train.70.under <- ovun.sample(outcome ~ ., data = train.70, method = "under", N = 146, seed = 101)$data

table(train.70.under$outcome)


### both ###

train.70.both <- ovun.sample(outcome ~ ., data = train.70, method = "both", N = 584, seed = 101)$data

table(train.70.both$outcome)


### data generation with ROSE ###

train.70.rose <- ROSE(tree.formula.all, data = train.70, p = 0.5, seed = 101)$data
# note bidder_id, address, payment_account, outcome columns are not generated

table(train.70.rose$outcome)
