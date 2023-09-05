#Course Project 1 - Exploratory Data Analysis
#Plot1
#Diego Matamoros

#Reading the data required
data <- read.table("/Users/diegomatamoroslizano/Desktop/Desktop/Training/R/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data1 <- data[data$Date %in% c("2/2/2007", "1/2/2007"),]

#Defining parameters of the histogram
hist1 <- hist(data1$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red", ylim = c(0,1000))

#Exporting
dev.copy(png, file = "plot1.png")
dev.off()
