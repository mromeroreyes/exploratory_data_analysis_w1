# how data are loaded, check the assignment.md file
# generating
png("plot1.png", width = 480, height = 480)
hist(hpc2[,3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
