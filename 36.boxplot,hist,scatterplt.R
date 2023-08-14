#a
install.packages("ggplot2")
library(ggplot2)
ggplot(ChickWeight,aes(x=factor(Diet),y=weight))+geom_boxplot()

#b
library(ggplot2)
ggplot(subset(ChickWeight,Diet ==1),aes(x=weight))+geom_histogram()

#c
library(ggplot2)
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) + geom_point()