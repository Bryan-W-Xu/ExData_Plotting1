## Download and unzip data
#
# fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# download.file(fileURL, destfile="PowerConsumption.zip")
# unzip("PowerConsumption.zip") ## household_power_consumption.txt 132MB
#
### worked successfully

file <- "household_power_consumption.txt"
data <- read.csv(file, header=TRUE, sep=";", dec=".", stringsAsFactors=FALSE)

dt1 <- subset(data, Date=="1/2/2007")
dt2 <- subset(data, Date=="2/2/2007")
dt <- rbind(dt1,dt2)

dt$Global_active_power <- as.numeric(dt$Global_active_power) 

# combine two columns to create a new colume Date_Time
new_dt <- transform(dt, Date_Time=paste(Date, Time, sep=" ")) 

tmp_time <- new_dt$Date_Time
time <- strptime(tmp_time, format="%d/%m/%Y %T")

