data <- read.csv("household_power_consumption.txt",sep=";",skip=66636,nrows=2880)
data[,1]<-as.Date(data[,1],format="%d/%m/%Y")
tiempo<-strptime(paste(data[,1],data[,2]), format="%Y-%m-%d %H:%M:%S")

plot(tiempo,data[,3], type ="l", main="", xlab="",ylab="Global Active Power (kilowatts)")



dev.copy(png, file ="plot2.png",width = 480, height = 480) 
dev.off()
