
#If the raw data is not in memory run the following 2 lines of code
#----------------------------------------------------------------------------
#a <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
#b <- subset(a, (a$Date == "2007-02-01")|(a$Date == "2007-02-02"))
#----------------------------------------------------------------------------

#Make a copy of b
c <- b

#Add new Timestamp column in POSTXct format
Timestamp <- as.POSIXct(paste(c$Date, c$Time), format="%Y-%m-%d %H:%M:%S")
c <- cbind(Timestamp, c)

#Write to a .png file
png(file = "plot2.png", width = 480, height = 480)
plot(c$Timestamp, as.numeric(as.character(c$Global_active_power)), 
     main=NULL, xlab = "", ylab="Global Active Power (kilowatts)", type = "l")
dev.off()