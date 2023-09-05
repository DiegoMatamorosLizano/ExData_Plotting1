#Course Project 1 - Exploratory Data Analysis
#Plot4
#Diego Matamoros

#Reading the data required
data <- read.table("/Users/diegomatamoroslizano/Desktop/Desktop/Training/R/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data1 <- data[data$Date %in% c("2/2/2007", "1/2/2007"),]

#Formatting fields
new_date <- as.Date(data1$Date, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(new_date, data1$Time))

#Defining parameters
par(mfrow = c(2,2))
#Plots
plot(date_time, data1$Global_active_power, type = "l" , xlab = "", ylab = "Global Active Power (kilowatts)")
plot(date_time, data1$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(date_time, data1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date_time, data1$Sub_metering_2, col = "red")
lines(date_time, data1$Sub_metering_3, col = "blue")

#Defining parameters of the plot
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.7, bty = "n")

plot(date_time, data1$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

#Exporting
dev.copy(png, file = "plot4.png")
dev.off()
