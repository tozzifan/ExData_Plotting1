# multiple plot
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
# plot n.1
plot(hopoco.2d$Time, hopoco.2d$Global_active_power, type="l", xlab="", ylab="Global Active Power")
# plot n.2
plot(hopoco.2d$Time, hopoco.2d$Voltage, type="l",xlab="datetime", ylab="Voltage")
# plot n.3
plot(hopoco.2d$Time, hopoco.2d$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(hopoco.2d$Time, hopoco.2d$Sub_metering_2, col="red")
lines(hopoco.2d$Time, hopoco.2d$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,
       box.lwd=0)
# plot n.4
plot(hopoco.2d$Time, hopoco.2d$Global_reactive_power, type="n",xlab="datetime", ylab="Global_reactive_power")
lines(hopoco.2d$Time, hopoco.2d$Global_reactive_power)
dev.off()