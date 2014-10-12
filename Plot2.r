


# Plot 2

with (file, plot(Datetime1,Global_active_power, type="l",
         
                 xlab="", 
                 ylab="Global active power(Kilowatts)"))
# save the file in PNG format
dev.copy(png,file="plot22.png",width = 480, height = 480, 
         units = "px", bg = "transparent")
dev.off()
