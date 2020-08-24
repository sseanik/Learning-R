
# Libraries
library(ggplot2)
library(tikzDevice)


# Read data from a CSV into Dataframe
data <- read.csv('plot.csv', TRUE, ",")
data[2]



# Generate a Scatter Plot
graph1 <- ggplot(data, aes(x = !!"threads", y = !!"mph")) +
    geom_point() +
    # X and Y
    labs(x = paste("$x$ = ", 'threads'), y = paste("$y$ = ", 'mph')) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

graph1