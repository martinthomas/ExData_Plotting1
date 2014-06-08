house <- read.csv(sep=';', file='../household_power_consumption.txt', stringsAsFactors=FALSE)

data <- house[house$Date=='1/2/2007'|house$Date=='2/2/2007',]

data$Date_Time<-strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))

#Plot global active power
plot(data$Date_Time, data$Global_active_power, xlab="", ylab="Global Active Power", type="l")
plot(data$Date_Time, data$Voltage, xlab="datetime", ylab="Voltage", type="l")

plot(data$Date_Time, data$Sub_metering_1, type='n', ylab="Energy sub metering", xlab="", main="")
lines(data$Date_Time, data$Sub_metering_1, col="black")
lines(data$Date_Time, data$Sub_metering_2, col="red")
lines(data$Date_Time, data$Sub_metering_3, col="blue")
legend("topright", lty=1, bty="n", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$Date_Time, data$Global_reactive_power, ylab="Global_reactive_power", type="l", xlab="datetime")
dev.off()
