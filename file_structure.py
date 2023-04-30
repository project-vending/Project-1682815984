 
import os

# Define the root directory for the project
ROOT_DIR = os.getcwd()

# Define the subdirectories to be created
SUBDIRECTORIES = ['data', 'notebooks', 'models', 'visualizations']

# Define the list of files to be created
FILENAMES = ['data.csv', 'models.R', 'visualizations.twb']

# Create the subdirectories
for dir_name in SUBDIRECTORIES:
    dir_path = os.path.join(ROOT_DIR, dir_name)
    os.makedirs(dir_path, exist_ok=True)

# Create the files in each subdirectory
for dir_name in SUBDIRECTORIES:
    for file_name in FILENAMES:
        file_path = os.path.join(ROOT_DIR, dir_name, file_name)
        open(file_path, 'a').close()
