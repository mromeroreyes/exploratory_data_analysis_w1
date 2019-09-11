# how data are loaded, check the assignment.md file
# generating
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(hpc2,plot(DateTime,Global_active_power, type = "l", ylab = "Global Active Power",xlab = ""))
with(hpc2,plot(DateTime,Voltage, type = "l", ylab = "Voltage", xlab = ""))
plot(hpc2$DateTime,hpc2$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab = "")
lines(hpc2$DateTime,hpc2$Sub_metering_2, col = "red")
lines(hpc2$DateTime,hpc2$Sub_metering_3, col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1), col= c("black","red","blue"), box.lty = 0)
with(hpc2,plot(DateTime,Global_reactive_power, type = "l",ylab = "Global reactive power", xlab = ""))
dev.off()
