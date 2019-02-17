library(dplyr)
library(readr)

# ALL
datasir<-read_csv(file = "~/MyGAMAPhD/sante4Dev/TBC/results/dataserge1.csv")
g_range <- range(0, datasir[,1])
k<- range(0,300)
plot(datasir[,c(1,3)], type="l", col="green", axes=T, ann=T, xlab="Time (Years) ", ylab="Number of S(t) X 2 and [ES(t), IS(t) , RS(t) , ER(t) , IR(t), RR(t)] X 20", ylim=k, , xlim= g_range)
lines(datasir[,c(1,5)], type="l", col="orange")
lines(datasir[,c(1,7)], type="l", col="red")
lines(datasir[,c(1,9)], type="l", col="blue")
lines(datasir[,c(1,11)], type="l", col="magenta")
lines(datasir[,c(1,13)], type="l", col="chocolate")
lines(datasir[,c(1,15)], type="l", col="#77B5FE")

box()
legend(80, 250, c("S(t)", "ES(t)", "IS(t)" , "RS(t)" , "ER(t)" , "IR(t)" , "RR(t)"), cex=0.8, 
   col=c("green", "orange", "red", "blue", "magenta", "chocolate", "#77B5FE"), lty=1);