## Creates a png to create plot2
## Uses cleanthedata.R to create newvar, a dataframe with the data for the two dates used in this assignment
## replacing $Date and $Time with a timestamp
## to use: source Plot2.R and run the function create_plot2()

source('cleanthedata.R')
create_plot2<-function(){
  newvar<-power_consumption2()
  png(filename="plot2.png")
  with(newvar, plot(TimeStamp, Global_active_power, ylab="Global Active Power (kilowatts)",type="n"))
  lines(newvar$TimeStamp, newvar$Global_active_power, type="s", lwd=1.5)
  dev.off()
}