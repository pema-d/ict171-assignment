#!/bin/bash

echo "Updating packages and installing Apache..."
sudo apt update -y
sudo apt install apache2 -y

echo "Deploying HTML page..."
sudo cp /tmp/index.html /var/www/html/index.html
sudo chown www-data:www-data /var/www/html/index.html
sudo chmod 644 /var/www/html/index.html

echo "Enabling Apache..."
sudo systemctl enable apache2
sudo systemctl restart apache2

echo "Deployment complete. Visit: https://pemacloud.duckdns.org"