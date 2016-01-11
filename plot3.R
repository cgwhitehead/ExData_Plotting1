## Creates a png to create plot3
## Uses cleanthedata.R to create newvar, a dataframe with the data for the two dates used in this assignment
## replacing $Date and $Time with a timestamp
## to use: source Plot3.R and run the function create_plot2()

source('cleanthedata.R')
create_plot3<-function(){
  newvar<-power_consumption2()
  png(filename="plot3.png")
  with(newvar, plot(TimeStamp, Sub_metering_1, ylab="Energy sub metering",type="n"))
  lines(newvar$TimeStamp, newvar$Sub_metering_1, type="s", lwd=1.5)
  lines(newvar$TimeStamp, newvar$Sub_metering_2, type="s", lwd=1.5, col="blue")
  lines(newvar$TimeStamp, newvar$Sub_metering_3, type="s", lwd=1.5, col="red")
  legend("topright", col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lwd=1, lty=1)
  dev.off()
}