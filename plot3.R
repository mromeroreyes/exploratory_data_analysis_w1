# how data are loaded, check the assignment.md file
# generating
png("plot3.png", width = 480, height = 480)
plot(hpc2$Time2,hpc2$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab = "")
lines(hpc2$Time2,hpc2$Sub_metering_2, col = "red")
lines(hpc2$Time2,hpc2$Sub_metering_3, col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1), col= c("black","red","blue"))
dev.off()
