
# Plot 1 Histo
# Make sure that you uploaded the database first by running the 1Upload DB.r file first
hist(file$Global_active_power,
     col="red",
     main="Global Active Power", 
     xlab="Global active power(Kilowatts)"
)
dev.copy(png,file="plot1.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
