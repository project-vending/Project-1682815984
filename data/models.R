
import os

# Define the directory path
dir_path = os.path.join(os.getcwd(), 'data')

# Define the file path
file_path = os.path.join(dir_path, 'models.R')

# Write to the file
with open(file_path, 'w') as f:
    f.write('# Your R code for machine learning models goes here')
