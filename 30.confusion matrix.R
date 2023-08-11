data(iris)
X <- iris[, c("Petal.Length", "Petal.Width")]
y <- iris[, "Species"]
set.seed(42)
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
X_train <- X[train_index, ]
X_test <- X[-train_index, ]
y_train <- y[train_index]
y_test <- y[-train_index]
model <- glm(y_train ~ ., data = X_train, family = "binomial")
y_pred <- predict(model, newdata = X_test, type = "response")
print(y_pred)
cm <- table(y_test, y_pred > 0.5)
print(cm)