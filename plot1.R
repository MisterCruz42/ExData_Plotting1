PowerC<- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?", nrows=2075259)
pcsub<-subset(PowerC, PowerC$Date %in% c("1/2/2007","2/2/2007"))
pcsub$Date <- as.Date(pcsub$Date, format="%d/%m/%Y")
pcsub$DateTime <- strptime(paste(pcsub$Date, pcsub$Time), format="%d/%m/%Y %H:%M:%S")
png("plot1.png",width = 480, height=480)
hist(pcsub$Global_active_power, col= "red", main="Global Active Power",xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off