#!/bin/bash
sudo yum install -y wget unzip httpd

sudo systemctl start httpd 
sudo systemctl enable httpd 

sudo wget -q https://www.tooplate.com/zip-templates/2103_central.zip
sudo unzip -o 2103_central.zip

sudo cp -r 2103_central/* /var/www/html/ 

sudo systemctl restart httpd 