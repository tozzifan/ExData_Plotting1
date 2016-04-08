# time series
png("plot2.png", width=480, height=480)
plot(hopoco.2d$Time, hopoco.2d$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()