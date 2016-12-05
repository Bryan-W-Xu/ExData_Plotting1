## Download and unzip data
#
# fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# download.file(fileURL, destfile="PowerConsumption.zip")
# unzip("PowerConsumption.zip") ## household_power_consumption.txt 132MB
#
### worked successfully

## dataPrep.R
#
# file <- "household_power_consumption.txt"
# data <- read.csv(file, header=TRUE, sep=";", dec=".", stringsAsFactors=FALSE)

# dt1 <- subset(data, Date=="1/2/2007")
# dt2 <- subset(data, Date=="2/2/2007")
# dt <- rbind(dt1,dt2)

# dt$Global_active_power <- as.numeric(dt$Global_active_power) 

png(file = "plot-1.png", width=480, height=480)
hist(new_dt$Global_active_power, 
    main="Global Active Power", 
    xlab="Global Active Power (killawatt)", 
    col="red")
dev.off()

