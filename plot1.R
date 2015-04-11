#setwd("/home/Exploratory_data_analysis/project1/")
data<-read.table("household_power_consumption.txt",
                 header=T,sep=";",stringsAsFactors=F,skip=66636,nrows=120*24,
                 na.strings="?",col.names=c("Date","Time","Global_active_power",
                                            "Global_reactive_power","Voltage",
                                            "Global_intensity","Sub_metering_1",
                                            "Sub_metering_2","Sub_metering_3"))
data$Date<-as.Date(data$Date,"%d/%m/%Y")


png("plot1.png")
hist(as.numeric(data$Global_active_power), col = "red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)",family="sans")
dev.off()