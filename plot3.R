#Course Project 1 - Exploratory Data Analysis
#Plot3
#Diego Matamoros

#Reading the data required
data <- read.table("/Users/diegomatamoroslizano/Desktop/Desktop/Training/R/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data1 <- data[data$Date %in% c("2/2/2007", "1/2/2007"),]

#Formatting fields
new_date <- as.Date(data1$Date, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(new_date, data1$Time))

#Defining parameters of the plot
plot(date_time, data1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date_time, data1$Sub_metering_2, col = "red")
lines(date_time, data1$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

#Exporting
dev.copy(png, file = "plot3.png")
dev.off()
