#!/bin/bash

# Check if nginx is already installed
if command -v nginx >/dev/null 2>&1; then
    echo "Nginx is already installed. No action needed."
else
    echo "Nginx is not installed. Installing now..."

    # Update package list and install nginx
    sudo apt update
    sudo apt install -y nginx

    # Verify installation
    if command -v nginx >/dev/null 2>&1; then
        echo "Nginx was successfully installed."
    else
        echo "Failed to install Nginx."
    fi
fi
