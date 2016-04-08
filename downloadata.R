wd<-'C:/data/coursera/electricpower' # set the work directory on my pc
setwd(wd)
library(RCurl); library(data.table) # libray used to download
# download the requested zip files
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", dest="hopoco.zip", mode="wb") 
unzip("hopoco.zip")
list.dirs(, full.names = TRUE, recursive = TRUE); list.files(, full.names = TRUE, recursive = TRUE) # check repos & files
hopoco<-read.table('C:/data/coursera/electricpower/household_power_consumption.txt',sep=";", header = TRUE, colClasses=c("character", "character", rep("numeric",7)),na="?")
hopoco$Time <- strptime(paste(hopoco$Date, hopoco$Time), "%d/%m/%Y %H:%M:%S")
hopoco$Date <- as.Date(hopoco$Date, "%d/%m/%Y")
str(hopoco); head(hopoco, n=3); names(hopoco);  # check db
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
hopoco.2d <- subset(hopoco, Date %in% dates) #subsetting: 2 days.  The data frame employed in the plot.




