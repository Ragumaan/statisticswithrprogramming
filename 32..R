data(airquality)
sum_temp <- sum(airquality$Temp, na.rm = TRUE) 
n_temp <- length(airquality$Temp[!is.na(airquality$Temp)])
mean_temp <- sum_temp / n_temp
mean_temp
# ii.
head(airquality, n = 5)
# iii. 
install.packages("dplyr")
library(dplyr) 
select(airquality, -Temp, -Wind) 
# iv. 
min_temp <- min(airquality$Temp, na.rm = TRUE)
min_temp
coldest_day <- which(airquality$Temp == min_temp)
coldest_day
airquality[coldest_day, ] 
# v. 
sum(airquality$Wind > 17, na.rm = TRUE)