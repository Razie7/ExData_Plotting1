
                        ##Upload the database file and select the required range of Data


## unzip the database file in your working directory
##open file connection ( to read only the required range of rows instead of the whole database)

con<-file("household_power_consumption.txt","r")
## read selected data range 
        target_r<-grep("(^Date)|(^[1|2]/2/2007)",readLines(con), value=TRUE)
close(con)  

#convert the selected range to data frame 
file<-read.csv(textConnection(target_r), sep = ';')

##convert date column and merge Date and Time.

d<-as.Date(file$Date, "%d/%m/%Y")
x<-paste(file$Date, file$Time, sep=" ")
file$Datetime1<-strptime (x, "%d/%m/%Y %H:%M:%S")
