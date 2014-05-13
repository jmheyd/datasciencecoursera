setwd("~/Desktop/Data Scientist/R Programming")
quiz1data <- read.csv("hw1_data.csv")
# what is value of ozone in 47th row?
row47 <- quiz1data[47,]
# how many missing values are in the ozone column?
miss_oz <- is.na(quiz1data$Ozone)
sum(miss_oz)
# what is the man of ozone, exlude missing values?
good_ozone <- quiz1data$Ozone[!miss_oz]
mean(good_ozone)
# extract subset of rown where ozeon > 31 and temp > 90
# what is the mean of solar.r in this subset
newdata <- subset(quiz1data, Ozone >  31 & Temp > 90)
mean(newdata$Solar.R)
# what is the mean of temp when month = 6?
datajune <- subset(quiz1data, Month == 6)
mean(datajune$Temp)
# what was the max ozone in the month of May?
datamay <- subset(quiz1data, Month == 5)
max(datamay$Ozone, na.rm = TRUE)
