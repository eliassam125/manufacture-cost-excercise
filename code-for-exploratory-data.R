
library(ggplot2)
dataset <- read.csv(file="/Users/Usuario/Desktop/projectos visual studio/manufactury project/EconomiesOfScale.csv")
#print(dataset)
print(mean(dataset[["Manufacturing.Cost"]]))
print(ggplot(dataset, aes(x = Number.of.Units, y = Manufacturing.Cost)) +
  stat_binhex() +
  theme_bw() +
  scale_fill_gradient(low = "white", high = "black") +
  labs(x = "Number of Units", y = "Manufacturing Cost"))