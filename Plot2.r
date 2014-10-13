


# Plot 2
# Make sure that you uploaded the database first by running the 1Upload DB.r file first

with (file, plot(Datetime1,Global_active_power, type="l",
         
                 xlab="", 
                 ylab="Global active power(Kilowatts)"))
# save the file in PNG format
dev.copy(png,file="plot2.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
