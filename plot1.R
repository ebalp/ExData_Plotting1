data <- read.csv("household_power_consumption.txt",sep=";",skip=66636,nrows=2880)
data[,1]<-as.Date(data[,1],format="%d/%m/%Y")

hist(data[,3],col=2,main="Global Active Power" , xlab = "Global Active Power (kilowatts)")
dev.copy(png, file ="plot1.png",width = 480, height = 480) 
dev.off()
