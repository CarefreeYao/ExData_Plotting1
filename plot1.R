

### load data
setwd('D:/Documents/Graduate\ Report/Coursera/ExploratoryData/homework1')
filename <- "./household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

dim(data) # 2075259 9
attach(data)
## We only need data of 2 days.
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)

### plot 1
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")


hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()


