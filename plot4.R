png(file = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2), mar = c(4, 4, 3, 3))
plot(c$Timestamp, as.numeric(as.character(c$Global_active_power)), 
     main=NULL, xlab = "", ylab="Global Active Power (kilowatts)", type = "l")

plot(c$Timestamp, as.numeric(as.character(c$Voltage)), 
     main=NULL, xlab = "datetime" , ylab="Voltage", type = "l")

plot(c$Timestamp, as.numeric(as.character(c$Sub_metering_1)), 
     main=NULL, xlab = "", ylab="Energy sub metering", type = "l")
points(c$Timestamp, as.numeric(as.character(c$Sub_metering_2)), 
       main=NULL, xlab = "", ylab="Energy sub metering", type = "l", col = "red")
points(c$Timestamp, as.numeric(as.character(c$Sub_metering_3)), 
       main=NULL, xlab = "", ylab="Energy sub metering", type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), lwd=c(2.5,2.5, 2.5),col=c("black","blue","red"), bty = "n")

plot(c$Timestamp, as.numeric(as.character(c$Global_reactive_power)), 
     main=NULL, xlab = "datetime" , ylab="Global_reactive_power", type = "l")

dev.off()