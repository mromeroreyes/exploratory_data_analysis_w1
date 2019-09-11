# how data are loaded, check the assignment.md file
# generating
png("plot2.png", width = 480, height = 480)
with(hpc2,plot(Time2,Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",xlab = ""))
dev.off()
