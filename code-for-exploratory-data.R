
library(ggplot2)
dataset <- read.csv(file="/Users/Usuario/Desktop/projectos visual studio/manufactury project/EconomiesOfScale.csv")
#print(dataset)
print(mean(dataset[["Manufacturing.Cost"]]))
ggplot()