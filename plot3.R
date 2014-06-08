house <- read.csv(sep=';', file='../household_power_consumption.txt', stringsAsFactors=FALSE)

data <- house[house$Date=='1/2/2007'|house$Date=='2/2/2007',]

data$Date_Time<-strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(data$Date_Time, data$Sub_metering_1, type='n', ylab="Energy sub metering", xlab="", main="")
lines(data$Date_Time, data$Sub_metering_1, col="black")
lines(data$Date_Time, data$Sub_metering_2, col="red")
lines(data$Date_Time, data$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()