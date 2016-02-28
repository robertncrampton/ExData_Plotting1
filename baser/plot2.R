##Read the data from the text file into R
hp <- readtable("hp.txt", header = TRUE, sep = ";")
##Subset to only the rows that are over the time period we're looking at
hpnew <- hp[66637:69516,]
##Create a new column that combines the date and Time variables
hpnew$Date.Time <- paste(hpnew$Date, hpnew$Time)
## Format the Date and Time variables to Date and Time
hpnew$Date.Time <- strptime(hpnew$Date.Time, format = "%Y-%m-%d %H:%M:%S)
##Graph Plot
plot(hpnew$Date.Time, hpnew$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowats)")
