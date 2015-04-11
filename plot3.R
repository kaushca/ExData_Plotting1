#setwd("/home/Exploratory_data_analysis/project1/")
data<-read.table("household_power_consumption.txt",
                 header=T,sep=";",stringsAsFactors=F,skip=66636,nrows=120*24,
                 na.strings="?",col.names=c("Date","Time","Global_active_power",
                                            "Global_reactive_power","Voltage",
                                            "Global_intensity","Sub_metering_1",
                                            "Sub_metering_2","Sub_metering_3"))
data$Date<-as.Date(data$Date,"%d/%m/%Y")


png("plot3.png")
plot(as.numeric(data$Sub_metering_1),ylab="Energy sub metering",
     family="sans",type="l",xaxt="n",xlab="")
lines(as.numeric(data$Sub_metering_2),col="red")
lines(as.numeric(data$Sub_metering_3),col="blue")
axis(side=1,at=c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=c(1,1,1))
dev.off()
