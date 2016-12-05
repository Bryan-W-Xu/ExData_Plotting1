## plot-4
#

png(file = "plot-4.png", width=480, height=480)  
par( mfcol = c(2,2), mar = c(4,4,1,1)) ## 2x2 grid, fill column first

# first
plot(time, new_dt$Global_active_power, type="n", xaxt="n", xlab="", ylab="")
lines(time, new_dt$Global_active_power)
title(ylab="Globe Active Power (kilowatts)")

r <- as.POSIXct(round(range(time2), "hours"))   ###find time range
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")    
### %a tick in Abbreviated weekday name, %A in full name

# second
plot(time, new_dt$Sub_metering_1, type="n", xaxt="n", xlab="", ylab="")
lines(time, new_dt$Sub_metering_1)
lines(time, new_dt$Sub_metering_2, col="red")
lines(time, new_dt$Sub_metering_3, col="blue")
title(ylab="Energy sub metering")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       fill=c("black","red","blue"))
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")

# third
plot(time, new_dt$Voltage, type="n", xaxt="n",xlab="", ylab="")
lines(time, new_dt$Voltage)
title(ylab="Voltage", xlab="datetime")
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")

# fourth
plot(time, new_dt$Global_reactive_power, type="n", xaxt="n",xlab="", ylab="")
lines(time, new_dt$Global_reactive_power)
title(ylab="Global_reactive_power", xlab="datetime")
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")

dev.off()


## Could not label X axis as Thur, Fri...
