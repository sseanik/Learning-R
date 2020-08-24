# Libraries
library(ggplot2)
library(tikzDevice)

# Read data from a CSV into Dataframe
data <- read.csv("studentMarks.csv", TRUE, ",")

# Create a folder to Store the graphs
dir.create("studentMarks")

# Open a tex file for writing
tikz(file = "studentMarks/graph.tex", width = 5, height = 5)

# Generate a Scatter Plot
graph1 <- ggplot(data, aes(x = reading.score, y = math.score)) +
    geom_point() +
    # Title
    ggtitle(paste("Title Name")) +
    # X and Y
    labs(x = "$x$ = Reading Scores", y = "$x$ = Math Scores") +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

print(graph1)
dev.off()

# Open a tex file for writing
tikz(file = "studentMarks/graphRegression.tex", width = 5, height = 5)

# Generate a Scatter plot with regression
graph2 <- ggplot(data, aes(x = reading.score, y = math.score)) +
    geom_point() +
    geom_smooth(method = lm, se = FALSE) +
    # Title
    ggtitle(paste("Title Name")) +
    # X and Y
    labs(x = "$x$ = Reading Scores", y = "$x$ = Math Scores") +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

print(graph2)
dev.off()