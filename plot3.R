#If the raw data is not in memory run the following 2 lines of code
#----------------------------------------------------------------------------
#a <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
#b <- subset(a, (a$Date == "2007-02-01")|(a$Date == "2007-02-02"))
#c <- b
#Timestamp <- as.POSIXct(paste(c$Date, c$Time), format="%Y-%m-%d %H:%M:%S")
#c <- cbind(Timestamp, c)
#----------------------------------------------------------------------------

#Write to a .png file
png(file = "plot3.png", width = 480, height = 480)
plot(c$Timestamp, as.numeric(as.character(c$Sub_metering_1)), 
     main=NULL, xlab = "", ylab="Energy sub metering", type = "l")
points(c$Timestamp, as.numeric(as.character(c$Sub_metering_2)), 
     main=NULL, xlab = "", ylab="Energy sub metering", type = "l", col = "red")
points(c$Timestamp, as.numeric(as.character(c$Sub_metering_3)), 
     main=NULL, xlab = "", ylab="Energy sub metering", type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), lwd=c(2.5,2.5, 2.5),col=c("black","blue","red"))
dev.off()