

#Plot 4
par(mfrow = c(2,2),mar=c(4,4,4,4),oma=c(0,1,0,0))
with (file,{ 
        plot(Datetime1,Global_active_power, type="l",xlab="", ylab="Global active power(Kilowatts)")
        plot(Datetime1,Voltage, type="l",xlab="datetime", ylab="Voltage")
        plot(Datetime1,Sub_metering_1, type="l",xlab="", ylab="Energy sub metering",col="black")
        lines (file$Datetime1,file$Sub_metering_2, type='l',col='red')
        lines (file$Datetime1,file$Sub_metering_3, type='l',col='blue')
        legend("topright", col = c("black", "red", "blue"), legend= c("Sub metering 1","Sub metering 2","Sub metering 3"),lty=1,cex=0.6)
        plot(Datetime1,Global_reactive_power, type="l",xlab="datetime", ylab="Global reactive power")
        
})
dev.copy(png,file="plot44.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
