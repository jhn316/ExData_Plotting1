#Read the data in
a <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
a$Date <- as.Date(a$Date, format = "%d/%m/%Y")
b <- subset(a, (a$Date == "2007-02-01")|(a$Date == "2007-02-02"))
rm(a)
#Write to a .png file
png(file = "plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(b$Global_active_power)), main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col = "red")
dev.off()


