## This script cleans household_power_consumption.csv file, replacing date and time with a timestamp.
## for the purpose of this assignment, we're only reading in FEB 1st and 2nd from 2007 and the file is assumed to be in 
## your working directory. 
## Required packages: data.table, lubridate, and sqldf

library(data.table)
library(lubridate)
library(sqldf)
power_consumption2<-function (){
power_consumption<-read.csv.sql("household_power_consumption.txt", header=TRUE, sep=";", sql='select * from file where Date = "1/2/2007" or Date="2/2/2007"')
merge_columns<-apply(cbind(power_consumption[c('Date', 'Time')]), 1, paste, collapse=" ")
merge_columns<-dmy_hms(merge_columns)
power_consumption$TimeStamp<-merge_columns
power_consumption<-power_consumption[-c(1,2)]
setcolorder(power_consumption, c(8,1:7))
}