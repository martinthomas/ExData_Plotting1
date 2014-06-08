house <- read.csv(sep=';', file='../household_power_consumption.txt', stringsAsFactors=FALSE)

data <- house[house$Date=='1/2/2007'|house$Date=='2/2/2007',]
hist(as.double(data$Global_active_power), xlab="Global Active Power (kilowatts)", main="Global Active Power", col=2)
dev.copy(png, "plot1.png", height = 480, width = 480, bg = "transparent")
dev.off()