#!/bin/bash

# Define possible paths
HOME_PATH="$HOME/WindowsXtream/OpenMe.bat"
LOCAL_PATH="./WindowsXtream/OpenMe.bat"

# Function to run the .bat file using Wine
run_bat() {
    echo "Running: $1"
    wine cmd /c "$1"
}

# Check and run from home folder
if [ -f "$HOME_PATH" ]; then
    run_bat "$HOME_PATH"

# Check and run from local folder
elif [ -f "$LOCAL_PATH" ]; then
    run_bat "$LOCAL_PATH"

# Not found
else
    echo "❌ OpenMe.bat not found in either ~/WindowsXtream or ./WindowsXtream"
    exit 1
fi
