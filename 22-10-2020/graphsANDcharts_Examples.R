
class <- c("numeric", "character", "factor", "numeric", "numeric")
pollution <- read.csv(file.choose(), colClasses = class)
View(pollution)
head(pollution)
str(pollution)
fivenum(pollution$pm25)
summary(pollution$pm25)
boxplot(pollution$pm25, col = "blue")
library(dplyr)
filter(pollution, pm25 > 15)
library(maps)
map("county", "california")
with(filter(pollution, pm25 > 15), points(longitude, latitude))
hist(pollution$pm25, col = "green")
rug(pollution$pm25)
hist(pollution$pm25, col = "green", breaks = 100)
rug(pollution$pm25)
boxplot(pollution$pm25, col = "blue")
abline(h = 12)
hist(pollution$pm25, col = "green")
 abline(v = 12, lwd = 2)
 abline(v = median(pollution$pm25), col = "magenta", lwd = 4)

  library(dplyr)
  table(pollution$region) %>% barplot(col = "wheat") 

   boxplot(pm25 ~ region, data = pollution, col = "red")  

# multple histograms
    par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
    hist(subset(pollution, region == "east")$pm25, col = "green")
    hist(subset(pollution, region == "west")$pm25, col = "green")

    # Scatter plots
     with(pollution, plot(latitude, pm25))
     abline(h = 12, lwd = 2, lty = 2)
# Scatter plots
     with(pollution, plot(latitude, pm25, col = region))
      abline(h = 12, lwd = 2, lty = 2)
# multiple scatter plots
      par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
       with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))
       with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))
       