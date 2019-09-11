# Week 1 Assignment

## Steps Summary

1. Getting dataset from the web
2. Loading dataset into a temporary data frame, for analyze it (structure, data types, column names, dimension).
~~~
hpc <- read.table("household_power_consumption.txt", header = TRUE, colClasses="character", sep=";")
~~~
3. Create a final data.frame with the right structure and data requested
~~~
hpc2 <- rbind(hpc[,][hpc$Date=="1/2/2007",],hpc[,][hpc$Date=="2/2/2007",])
~~~
4. Define the right data type for each field
  - Setting the right format for the dates
~~~
d <- hpc2[,1]
m <- length(d)
for (i in 1:m){
   	nf <- paste(c(substring(d[i],5,8),substring(d[i],3,3),substring(d[i],1,1)), collapse="-")
   	hpc2[i,1] <- nf
}

hpc2$Date <- as.Date(hpc2$Date)
hpc2$Global_active_power <- as.numeric(hpc2$Global_active_power)
hpc2$Global_reactive_power <- as.numeric(hpc2$Global_reactive_power)
hpc2$Voltage <- as.numeric(hpc2$Voltage)
hpc2$Global_intensity <- as.numeric(hpc2$Global_intensity)
hpc2$Sub_metering_1 <- as.numeric(hpc2$Sub_metering_1)
hpc2$Sub_metering_2 <- as.numeric(hpc2$Sub_metering_2)
hpc2$Sub_metering_3 <- as.numeric(hpc2$Sub_metering_3)
~~~
5. If necessary, create a new variable with POSIXlt data types
~~~
hpc2$DateTime <- as.POSIXlt(hpc2$DateTime)
# populating the new variable
for (i in 1:m){
	nf <- paste(hpc2[i,1],hpc2[i,2], collapse = " ")
	hpc2$DateTime[i] <- nf
}
~~~
6. Plotting
>
Check the R files posted in this repo
>
