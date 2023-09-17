
library(gridExtra)
library(ggplot2)
dataset <- read.csv(file="/Users/Usuario/Desktop/projectos visual studio/manufactury project/EconomiesOfScale.csv")

print(mean(dataset[["Manufacturing.Cost"]]))


plot_a <- ggplot(dataset, aes(x = Number.of.Units, y = Manufacturing.Cost)) +
  stat_binhex() +
  theme_bw() +
  scale_fill_gradient(low = "white", high = "black") +
  labs(x = "Number of Units", y = "Manufacturing Cost", title ="Hexagonal Binning")+ 
  theme(
  axis.title.x = element_text(size = 24),
  axis.title.y = element_text(size = 24),
  axis.text.x = element_text(size = 10),
  axis.text.y = element_text(size = 10),
  legend.text = element_text(size = 10)
)


  #the following is a linear regresion
plot_b <- ggplot(dataset, aes(x = Number.of.Units, y = Manufacturing.Cost)) +
  geom_point() +  
  geom_smooth(method = "lm", se = FALSE, color = "blue") +  
  theme_bw() +
  labs(x = "Number of Units", y = "Manufacturing Cost", title = "Scatter Plot with Linear Regression Line")+
   theme(
  axis.title.x = element_text(size = 24),
  axis.title.y = element_text(size = 24),
  axis.text.x = element_text(size = 10),
  axis.text.y = element_text(size = 10),
  legend.text = element_text(size = 10)
)
  


combined_plot <- grid.arrange(plot_a, plot_b, ncol = 2)  # Display plots in two columns

# Print the combined plot
print(combined_plot)
ggsave("plot_of_this_code.png", combined_plot, width = 16, height = 9)