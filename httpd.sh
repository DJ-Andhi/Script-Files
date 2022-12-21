#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
wget -P /var/www/html https://demowebbucket12.s3.amazonaws.com/iPortfolio.zip
sudo unzip /var/www/html/iPortfolio.zip
sudo mv iPortfolio/* /var/www/html/
