#!/bin/bash

# Update the system package index
echo "Updating system package index..."
sudo apt update

# Install Nginx web server
echo "Installing Nginx web server..."
sudo apt install -y nginx

# Enable Nginx to start on boot
echo "Enabling Nginx web server to start on boot..."
sudo systemctl enable nginx

# Start Nginx web server
echo "Starting Nginx web server..."
sudo systemctl start nginx

# Check Nginx status
echo "Checking Nginx web server status..."
sudo systemctl status nginx

echo "Nginx web server has been installed and started successfully."

