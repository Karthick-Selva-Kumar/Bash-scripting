#!/bin/bash

echo "########################################"
echo "Installing packages."
echo "########################################"
sudo apt-get update > /dev/null
sudo apt-get install wget unzip apache2 -y > /dev/null
echo

echo "########################################"
echo "Start & Enable Apache Service"
echo "########################################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/
echo

echo "########################################"
echo "Restarting Apache service"
echo "########################################"
sudo systemctl restart apache2
echo

