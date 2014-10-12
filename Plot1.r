
# Plot 1 Histo
hist(file$Global_active_power,
     col="red",
     main="Global Active Power", 
     xlab="Global active power(Kilowatts)"
)
dev.copy(png,file="plot1.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
