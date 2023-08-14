# Load dataset named ChickWeight
data(ChickWeight)

# (i) Order the data frame, in ascending order by feature name “weight” grouped by feature “diet” and Extract the last 6 records from order data frame.
library(dplyr)
ordered_data <- ChickWeight %>% group_by(Diet) %>% arrange(weight)
tail(ordered_data, 6)

# (ii) a Perform melting function based on “Chick", "Time", "Diet" features as ID variables
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
melted_data
install.packages("stringi")

# b Perform cast function to display the mean value of weight grouped by Diet
cast_data_mean <- dcast(melted_data, Diet ~ variable, mean)
cast_data_mean

# c Perform cast function to display the mode of weight grouped by Diet
# Define a function to calculate the mode of a vector
mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

cast_data_mode <- dcast(melted_data, Diet ~ variable, mode)
cast_data_mode
