data <- read.csv("household_power_consumption.txt",sep=";",skip=66636,nrows=2880)
data[,1]<-as.Date(data[,1],format="%d/%m/%Y")
tiempo<-strptime(paste(data[,1],data[,2]), format="%Y-%m-%d %H:%M:%S")

par(mfcol = c(2,2))

plot(tiempo,data[,3], type ="l", main="", xlab="",ylab="Global Active Power (kilowatts)")
plot(tiempo,data[,7], type ="l", main="", xlab="",ylab="Energy Sub Metering")
lines(tiempo,data[,8], type ="l", col=2)
lines(tiempo,data[,9], type ="l", col=4)
legend("topright"  ,xjust=1,cex=0.7, bty="n", lty=1,col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(tiempo,data[,5], type ="l", main="", xlab="datetime",ylab="Voltage")
plot(tiempo,data[,4], type ="l", main="", xlab="datetime",ylab="Global_reactive_power")


dev.copy(png, file ="plot4.png",width = 480, height = 480) 
dev.off()
par(mfcol = c(1,1))