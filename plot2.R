PowerC<- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?", nrows=2075259)
pcsub<-subset(PowerC, PowerC$Date %in% c("1/2/2007","2/2/2007"))
pcsub$Date <- as.Date(pcsub$Date, format="%d/%m/%Y")
pcsub$DateTime <- as.POSIXct(paste(pcsub$Date, pcsub$Time))
plot(pcsub$DateTime, pcsub$Global_active_power, xlab='', ylab = "Global Active Power (kilowatts)", type = "l")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off