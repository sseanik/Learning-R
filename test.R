
# Libraries
library(ggplot2)
library(tikzDevice)


# Read data from a CSV into Dataframe
data <- read.csv('plot.csv', TRUE, ",")
data[["threads"]]


# Generate a Scatter Plot
graph1 <- ggplot(data, aes(x = .data[["threads"]], y = .data[["mph"]])) +
    geom_point() +
    # X and Y
    labs(x = paste("$x$ = ", 'threads'), y = paste("$y$ = ", 'mph')) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

graph1