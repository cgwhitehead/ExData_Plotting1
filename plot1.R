## Uses cleanthedata.R to create newvar, a dataframe with the data for the two dates used in this assignment
## replacing $Date and $Time with a timestamp
## to use: source Plot1.R and run the function create_plot1()


source('cleanthedata.R')
create_plot1<-function(){
newvar<-power_consumption2()
png(filename="plot1.png")
hist(newvar$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
}
