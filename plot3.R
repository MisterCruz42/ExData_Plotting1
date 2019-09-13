PowerC<- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?", nrows=2075259)
pcsub<-subset(PowerC, PowerC$Date %in% c("1/2/2007","2/2/2007"))
pcsub$Date <- as.Date(pcsub$Date, format="%d/%m/%Y")
pcsub$DateTime <- as.POSIXct(paste(pcsub$Date, pcsub$Time))
png("plot3.png",width = 480, height=480)
plot(pcsub$DateTime, pcsub$Sub_metering_1, xlab='', ylab = "Energy sub metering", type = "l")
lines(pcsub$DateTime, pcsub$Sub_metering_3, type = "l", col ="blue")
lines(pcsub$DateTime, pcsub$Sub_metering_2, type = "l", col ="red")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(1,5),col=c("black", "red", "blue"), y.intersp = 1.5)

dev.off()

