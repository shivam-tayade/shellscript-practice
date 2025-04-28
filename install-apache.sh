#!/bin/bash

# Update the system package index
echo "Updating system package index..."
sudo apt update

# Install Apache web server
echo "Installing Apache web server..."
sudo apt install -y apache2

# Enable Apache to start on boot
echo "Enabling Apache web server to start on boot..."
sudo systemctl enable apache2

# Start Apache web server
echo "Starting Apache web server..."
sudo systemctl start apache2

# Check Apache status
echo "Checking Apache web server status..."
sudo systemctl status apache2

echo "Apache web server has been installed and started successfully."

