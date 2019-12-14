setwd('/Users/Anand/Documents/Data science/TimeSeries/air_pollution/')
#install.packages("imputeTS")
library("inputeTS")
inputDF<-read.csv(file = 'DelhiAvergaedSeries.csv',header = TRUE)
y=merge(x=c(1:max(inputDF$X1.0)),y=inputDF,all.x=TRUE,by.y="X1.0",by.x="x")
col<-ts(y$X20.049999999999997)
write.csv(na_interpolation(col),"interpolatedData.csv")

#restart rstudio if library inputeTS does not load 