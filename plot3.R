
R version 3.2.4 (2016-03-10) -- "Very Secure Dishes"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.67 (7152) x86_64-apple-darwin13.4.0]

[Workspace restored from /Users/katarzynarachuta/.RData]
[History restored from /Users/katarzynarachuta/.Rapp.history]

> # Reading the file with datadataFile <- "./data/household_power_consumption.txt"data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")# Subsetting the datasesubdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]#str(subSetData)datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") GlobalActivePower <- as.numeric(subdata$Global_active_power)SubMetering1 <- as.numeric(subdata$Sub_metering_1)SubMetering2 <- as.numeric(subdata$Sub_metering_2)SubMetering3 <- as.numeric(subdata$Sub_metering_3)png("plot3.png", width=480, height=480)plot(datetime, SubMetering1, type="l", ylab="Energy Submetering", xlab="")lines(datetime, SubMetering2, type="l", col="red")lines(datetime, SubMetering3, type="l", col="blue")legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))dev.off()