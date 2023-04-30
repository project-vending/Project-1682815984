
# Load the necessary libraries
library(caret)  # for building and evaluating models
library(tidyverse)  # for data manipulation and visualizations

# Load the data
data <- read.csv("data/data.csv")

# Split the data into training and testing sets
set.seed(123)  # for reproducibility
train_index <- createDataPartition(data$target_variable, p = 0.7, list = FALSE)
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Build a linear regression model to predict the target variable based on the other features
lm_model <- train(target_variable ~ ., data = train_data, method = "lm")

# Evaluate the model's performance on the testing set
predictions <- predict(lm_model, newdata = test_data)
test_rmse <- RMSE(predictions, test_data$target_variable)

# Print the model's root-mean-square error on the testing set
cat("The linear regression model has an RMSE of", test_rmse)
