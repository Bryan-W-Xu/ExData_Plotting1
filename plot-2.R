## plot-2
#
png(file = "plot-2.png", width=480, height=480)
plot(time, new_dt$Global_active_power, type="n", xaxt="n", ylab="", xlab="")
lines(time, new_dt$Global_active_power)
title(ylab="Globe Active Power (kilowatts)")

r <- as.POSIXct(round(range(time2), "hours"))   ###find time range
axis.POSIXct(1, at=seq(r[1], r[2], by="day"), format="%a")    
### %a tick in Abbreviated weekday name, %A in full name

dev.off()


