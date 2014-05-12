data <- read.csv("household_power_consumption.txt",sep=";",skip=66636,nrows=2880)
data[,1]<-as.Date(data[,1],format="%d/%m/%Y")
tiempo<-strptime(paste(data[,1],data[,2]), format="%Y-%m-%d %H:%M:%S")



plot(tiempo,data[,7], type ="l", main="", xlab="",ylab="Energy Sub Metering")
lines(tiempo,data[,8], type ="l", col=2)
lines(tiempo,data[,9], type ="l", col=4)
legend("topright"  , lty=1,col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.copy(png, file ="plot3.png",width = 480, height = 480) 
dev.off()