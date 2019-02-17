library(dplyr)
library(readr)

# ALL
datasir<-read_csv(file = "~/MyGAMAPhD/sante4Dev/TBC/results/dataserge.csv")
g_range <- range(0, datasir[,1])
k<- range(0,100)
plot(datasir[,c(1,2)], type="l", col="green", axes=T, ann=T, xlab="Time (Years) ", ylab="Number of S(t), ES(t), IS(t) , RS(t) , ER(t) , IR(t) and RR(t)", ylim=k, , xlim= g_range)
lines(datasir[,c(1,3)], type="l", col="orange")
lines(datasir[,c(1,4)], type="l", col="red")
lines(datasir[,c(1,5)], type="l", col="blue")
lines(datasir[,c(1,6)], type="l", col="magenta")
lines(datasir[,c(1,7)], type="l", col="chocolate")
lines(datasir[,c(1,8)], type="l", col="#77B5FE")

box()
legend(80, 100, c("S(t)", "ES(t)", "IS(t)" , "RS(t)" , "ER(t)" , "IR(t)" , "RR(t)"), cex=0.8, 
   col=c("green", "orange", "red", "blue", "magenta", "chocolate", "#77B5FE"), lty=1);