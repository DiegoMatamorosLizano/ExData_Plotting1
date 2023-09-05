#Course Project 1 - Exploratory Data Analysis
#Plot2
#Diego Matamoros

#Reading the data required
data <- read.table("/Users/diegomatamoroslizano/Desktop/Desktop/Training/R/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data1 <- data[data$Date %in% c("2/2/2007", "1/2/2007"),]

#Formatting fields
new_date <- as.Date(data1$Date, format = "%d/%m/%Y")
date_time <- as.POSIXct(paste(new_date, data1$Time))

#Defining parameters of the plot
plot(date_time, data1$Global_active_power, type = "l" , xlab = "", ylab = "Global Active Power (kilowatts)")

#Exporting
dev.copy(png, file = "plot2.png")
dev.off()
     