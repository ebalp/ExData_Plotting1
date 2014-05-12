con <- file("household_power_consumption.txt")
open(con)

fecha <-0
i<-1
linea <- readLines(con,1)
while (fecha<as.Date("2007-02-01")){
  linea <- readLines(con,1)
  fecha <- as.Date(substring(linea[1],1,10),format="%d/%m/%Y")
  i<-i+1
}
i<-i-1
close(con)

## we should skip i lines 

con <- file("household_power_consumption.txt")
open(con)

fecha <-0
readLines(con,i)
j<-0
repeat {
  linea <- readLines(con,1)
  fecha <- as.Date(substring(linea[1],1,10),format="%d/%m/%Y")
  if(fecha>as.Date("2007-02-02")){
    break
  }
  j<-j+1
}

close(con)

## we should read j lines

con <- file("household_power_consumption.txt")
open(con)
## we skip i=66637 lines (counting header(!!!))and read j=2880 lines (see exploringlines.R)
readLines(con,66637)
lineas <- readLines(con,2880)
close(con)
con <- file("household_power_consumption.txt")
open(con)
names <- readLines(con,1)
close(con)
