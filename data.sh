#!/bin/bash
sudo mkdir -p /var/www/html/
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start
sudo usermod -a -G apache centos
sudo chown -R centos:apache /var/www
sudo yum install -y mysql php php-mysql