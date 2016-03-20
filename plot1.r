library(dplyr)
Dayz <- c("2/1/2007","2/2/2007")
RelRange <- filter((read.table("EDA/household_power_consumption.txt", header = T, sep=";", na.strings=c("", "NA","?"),)), Date %in% Dayz)
RelRange$ConvDt <- strptime((paste(RelevantRange$Date, RelevantRange$Time, sep=" ")), "%d/%m/%Y %H:%M:%S")
hist((as.numeric(RelRange$Global_active_power)), breaks =15, col="orange", xlab = "Global Active Power")
