### Loading the data
library(dplyr)

library(tidyverse)
Cars_df <- read.csv(file = "C:/Users/Suma Marri/Documents/GitHub/USCars/USA_cars_datasets.csv", colClasses = "character")
Cars_df

price <- as.integer(Cars_df$price)
mileage <- as.double(Cars_df$mileage)
year <- as.factor(Cars_df$year)
d <- data.frame(year, mileage, price)
d

## Partitioning Unsupervised Learning
### K-Means Clustering

#Scaling the data to remove influence caused by large variance
library(dplyr)
scaled_d <- d%>%mutate_if(is.numeric,scale)
scaled_d
#Dropping the character variable while clustering
#Performing k-means clustering with 2 clusters initially
kmeans_scaled_d_2 <- kmeans(
  x = scaled_d[-1],
  centers = 2
)
kmeans_scaled_d_2

#Performing k-means clustering with 3 clusters
kmeans_scaled_d_3 <- kmeans(
  x = scaled_d[-1],
  centers = 3
)
kmeans_scaled_d_3
