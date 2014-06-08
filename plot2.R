house <- read.csv(sep=';', file='../household_power_consumption.txt', stringsAsFactors=FALSE)

data <- house[house$Date=='1/2/2007'|house$Date=='2/2/2007',]

data$Date_Time<-strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

plot(data$Date_Time, data$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="", main="")
dev.copy(png, "plot2.png", height = 480, width = 480, bg = "transparent")
dev.off()