library(psymonitor)
library(lubridate,warn.conflicts=FALSE)
library(ggplot2)
svfile <- read.delim("~/Desktop/cbcbcfc32b6eee39 (1).txt")

y<-svfile$PRC[4027:6039]
obs<- length(y)
swindow0 <- floor(obs*(0.01+1.8/sqrt(obs)))
dim <-obs - swindow0+1
Tb <- 24+swindow0-1

# Estimate PSY stats and CVs

bsadf <- PSY(y, swindow0)
quantilesBsadf <- cvPSYwmboot(y,swindow0,Tb=Tb, nboot = 49)
quantile95 <- quantilesBsadf %*% matrix(1,nrow=1,ncol = dim)

# locate dates
ind95 <- (bsadf > t(quantile95[2,]))*1
monitorDates <- ymd(svfile$date[swindow0:obs])
OT <- locate(ind95, monitorDates)
v <- disp(OT, obs)
print(v)
