
library(ggplot2)
Dayz <- c("1/2/2007","2/2/2007")
RelRange <- filter((read.table("EDA/household_power_consumption.txt", header = T, sep=";", stringsAsFactors = FALSE)), Date %in% Dayz)
RelRange$ConvDt <- strptime((paste(RelevantRange$Date, RelevantRange$Time, sep=" ")), "%m/%d/%Y %H:%M:%S")
ggplot(RelRange, aes(x=ConvDt)) + geom_line(aes(y = Sub_metering_3), color = 'blue') +geom_line(aes(y = Sub_metering_2), color = 'red') + geom_line(aes(y = Sub_metering_1), color = 'black') + ylab(label="Energy sub-metering")  
