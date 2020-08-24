
# Libraries
library(ggplot2)
library(tikzDevice)

#install.packages("stringr")
library(stringr)

args <- commandArgs(trailingOnly = TRUE)


# test if there is at least one argument: if not, return an error
if (length(args) != 3) {
  stop("Usage: Rscript withArgs.R <CSV Filename> <x.axis> <y.axis>")
}

fileName <- args[1]
folderName <- str_replace(fileName, ".csv$", "")
xAxis <- args[2]
yAxis <- args[3]

# Read data from a CSV into Dataframe
data <- read.csv(fileName, TRUE, ",")

# Create a folder to Store the graphs
dir.create(folderName)

# Open a tex file for writing
tikz(file = paste(folderName, "/graph.tex", sep = ""), width = 5, height = 5)

# Generate a Scatter Plot
graph1 <- ggplot(data, aes(x <- .data[[xAxis]], y = .data[[yAxis]])) +
    geom_point() +
    # X and Y
    labs(x = paste("$x$ = ", xAxis), y = paste("$y$ = ", yAxis)) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

print(graph1)
dev.off()

# Open a tex file for writing
tikz(file = paste(folderName, "/graphRegression.tex", sep = ""), width = 5, height = 5)

# Generate a Scatter plot with regression
graph2 <- ggplot(data, aes(x = .data[[xAxis]], y = .data[[yAxis]])) +
    geom_point() +
    geom_smooth(method = lm, se = FALSE) +
    # X and Y
    labs(x = paste("$x$ = ", xAxis), y = yAxis) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme_bw()

print(graph2)
dev.off()