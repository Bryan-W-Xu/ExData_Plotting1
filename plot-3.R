## plot-3

png(file = "plot-3.png", width=480, height=480)
plot(time, new_dt$Sub_metering_1, type="n", xaxt="n", ylab="", xlab="")
lines(time, new_dt$Sub_metering_1)
lines(time, new_dt$Sub_metering_2, col="red")
lines(time, new_dt$Sub_metering_3, col="blue")
title(ylab="Energy sub metering")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       fill=c("black","red","blue"))

r <- as.POSIXct(round(range(time2), "hours"))   ###find time range
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")    
### %a tick in Abbreviated weekday name, %A in full name

dev.off()
