#!/bin/bash

# delete the directory
DIR_NAME="/opt/viswa"

# Check if the directory exists
if [ -d "$DIR_NAME" ]; then
    echo "Directory '$DIR_NAME' already exists.Deleting now..."
    rm -rf "$DIR_NAME"
    echo "Directory '$DIR_NAME' deleted."
else
    echo "Directory '$DIR_NAME' does not exist. Nothing to delete..."
fi