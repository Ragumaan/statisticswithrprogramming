data(iris)
# (i)
dim(iris) 
str(iris) 
summary(iris) 
sapply(iris[,1:4], sd) 

# (ii) 
aggregate(iris[,1:4], by = list(Species = iris$Species), mean) 
aggregate(iris[,1:4], by = list(Species = iris$Species), sd) 

# (iii) 
quantile(iris$Sepal.Width) 
quantile(iris$Sepal.Length) 

# (iv) 
iris1 <- iris 
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), labels = c("Q1", "Q2", "Q3", "Q4")) # create a new column that categorizes sepal length by quantile

# (v) 
aggregate(iris1[,1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$S
                                 epal.Length.Cate), mean) 
# (vi)
# This is the same as (v),

# (vii) 
install.packages("data.table")
library(data.table) 
iris1_dt <- as.data.table(iris1)
iris1_dt[, lapply(.SD, mean), by = c("Species", "Sepal.Length.Cate"), .SDcols = 1:4]