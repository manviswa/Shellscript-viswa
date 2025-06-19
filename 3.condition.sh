#!/bin/bash

# Set the directory name
DIR_NAME="/opt/viswa"

# Check if the directory exists
if [ -d "$DIR_NAME" ]; then
    echo "Directory '$DIR_NAME' already exists."
else
    echo "Directory '$DIR_NAME' does not exist. Creating now..."
    mkdir "$DIR_NAME"
    echo "Directory '$DIR_NAME' created."
fi
