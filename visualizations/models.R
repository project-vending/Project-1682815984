
import os

# Define the root directory for the project
ROOT_DIR = os.getcwd()

# Define the directory and filename for the models.R file
MODELS_DIR = os.path.join(ROOT_DIR, 'visualizations')
MODELS_FILE = os.path.join(MODELS_DIR, 'models.R')

# Write the code to the models.R file
with open(MODELS_FILE, 'w') as f:
    f.write("# R script for predictive analytics models\n")
    f.write("# Code to be added here\n")
