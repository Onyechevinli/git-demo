#!/bin/bash

# Check if Git is installed
if ! command -v git &> /dev/null; then
	echo "Git is not installed. Installing Git..."
	sudo apt-get update
	sudo apt-get install -y git
fi

# Create a directory and navigate into it
repo_directory="my_repo"
if [ ! -d "$repo_directory" ]; then
    echo "Creating directory: $repo_directory"
    mkdir "$repo_directory"
fi
