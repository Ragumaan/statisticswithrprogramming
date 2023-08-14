#load data
data("USArrests")
#view structure of data
str(USArrests)
#view summary statistics of data
summary(USArrests)



data("USArrests")
#find the index of the maximum value in Rape column
max_rape <- which.max(USArrests$Rape)
#print the state name corresponding to that index
rownames(USArrests)[max_rape]



data("USArrests")
#find the index of the maximum value in Murder column
max_murder <- which.max(USArrests$Murder)
#print the state name corresponding to that index
rownames(USArrests)[max_murder]
#find the index of the minimum value in Murder column
min_murder <- which.min(USArrests$Murder)
#print the state name corresponding to that index
rownames(USArrests)[min_murder]

