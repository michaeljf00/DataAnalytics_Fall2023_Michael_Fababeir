setwd("/Users/michaeljoshua/Desktop/Data Analytics/DataAnalytics_Fall2023_Michael_Fababeir/Labs/Lab 02")
multipleRegression_data <- read.csv("dataset_multipleRegression.csv")

attach(multipleRegression_data)

summary(multipleRegression_data)

# Exercise 1

new_df <- data.frame(UNEM = 0.07, HGRAD = 90000)

model1 <- lm(ROLL ~ UNEM + HGRAD, data = multipleRegression_data)
predictedion_roll1 <- predict(model1, newdata = new_df)

summary(model)

new_df <- data.frame(UNEM = 0.07, HGRAD = 90000, INC = 25000)

model2 <- lm(ROLL ~ UNEM + HGRAD + INC, data = multipleRegression_data)
prediction_roll2 <- predict(model2, newdata = new_df)

summary(model2)

# Exercise 2

library(dplyr)

abalone_data <- read.csv("abalone.csv")

attach(abalone_data)

summary(abalone_data)

colnames(abalone_data) <- c("sex", "length", "diameter", "height", "whole_weight", "shucked_weight", "viscera_weight", "shell_weight", "rings")

summary(abalone_data$rings)

abalone_data$rings <- as.numeric(abalone_data$rings)
abalone_data$rings <- as.factor(abalone_data$rings)

summary(abalone_data$rings)

abalone_copy <- abalone_data
abalone_copy$sex <- NULL 

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

abalone_copy[1:7] <- as.data.frame(lapply(abalone_copy[1:7], normalize))

train_indeces <- sample(2, nrow(abalone_copy), replace=TRUE)

train_set <- abalone_copy[train_indeces==1,]
test_set <- abalone_copy[train_indeces==2,]
k_val = ceiling(sqrt(count(abalone_data)))

library(class)
help(knn)
train_set$rings
pred <- knn(train = train_set[1:7], test = test_set[1:7], cl = train_set$rings, k = k_val)

table(pred)

# Exercise 3
library(ggplot2)

data("iris")

summary(iris)

iris_data <- iris[, -5]

summary(iris_data)

k <- 3

set.seed(147893)
kmeans_res <- kmeans(iris_data, centers = k, nstart = 1000)

table(iris[, 5], kmeans_res$cluster)

# Based on the results, it looks as if cluster 1 contains primarily data points
# from the "vriginica" species while majority of the points from "setosa" and
# "versicolor" were assigned to other clusters.
# Cluster 2 contains data points in both "versicolor" and "vrginica" with
# the majority being "versicolor" making it most likely a mixture of data points
# of "versicolor" and "vrginica"
# With cluster 3 having all 50 of its points categorized in "setosa", this
# indicates that cluster 3 primarily represents that species

