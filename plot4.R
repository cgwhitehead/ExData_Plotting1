## Creates a png to create plot4
## Uses cleanthedata.R to create newvar, a dataframe with the data for the two dates used in this assignment
## replacing $Date and $Time with a timestamp
## to use: source Plot4.R and run the function create_plot2()

source('cleanthedata.R')

create_plot2_quick<-function(){
with(newvar, plot(TimeStamp, Global_active_power, ylab="Global Active Power (kilowatts)",type="n"))
lines(newvar$TimeStamp, newvar$Global_active_power, type="s", lwd=1.5)}

create_plot3_quick<-function(){
  with(newvar, plot(TimeStamp, Sub_metering_1, ylab="Energy sub metering",type="n"))
  lines(newvar$TimeStamp, newvar$Sub_metering_1, type="s", lwd=1.5)
  lines(newvar$TimeStamp, newvar$Sub_metering_2, type="s", lwd=1.5, col="blue")
  lines(newvar$TimeStamp, newvar$Sub_metering_3, type="s", lwd=1.5, col="red")
  legend("topright", col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lwd=1, lty=1, bty="n", cex=.75)
}

create_plot_upper_right<-function(){
  with(newvar, plot(TimeStamp, Voltage, ylab="Voltage", xlab="datetime",type="n"))
  lines(newvar$TimeStamp, newvar$Voltage, type="s", lwd=1.5)
}

create_plot_lower_right<-function(){
  with(newvar, plot(TimeStamp, Global_reactive_power, xlab="datetime",type="n"))
  lines(newvar$TimeStamp, newvar$Global_reactive_power, type="s", lwd=1.5)
}



create_plot4<-function(){
  newvar<-power_consumption2()
  png(filename="plot4.png")
  par(mfcol=c(2,2))
  create_plot2_quick()
  create_plot3_quick()
  create_plot_upper_right()
  create_plot_lower_right()
  dev.off()
}