data= airquality
print("original data: Daily air quality measurements")
print(data)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing'Solar.R' and 'Wind' variables:")
print(data)