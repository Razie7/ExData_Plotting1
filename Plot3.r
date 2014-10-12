#Plot 3
with (file, plot(Datetime1,Sub_metering_1, type="l",xlab="", ylab="Energy sub metering",col="black"))
lines (file$Datetime1,file$Sub_metering_2, type='l',col='red')
lines (file$Datetime1,file$Sub_metering_3, type='l',col='blue')
legend("topright", col = c("black", "red", "blue"), legend= c("Sub metering 1","Sub metering 2","Sub metering 3"),angle = 45 ,lty=1,cex=0.8)


dev.copy(png,file="plot3.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
