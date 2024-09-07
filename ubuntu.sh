#!/bin/bash

sudo apt install apache2 \
                 ghostscript \
                 libapache2-mod-php \
                 mysql-server \
                 php \
                 php-bcmath \
                 php-curl \
                 php-imagick \
                 php-intl \
                 php-json \
                 php-mbstring \
                 php-mysql \
                 php-xml \
                 php-zip -y
wget https://wordpress.org/latest.tar.gz
tar zxf latest.tar.gz
sudo cp -R wordpress/* /var/www/html
sudo chown www-data:www-data /var/www/html
sudo rm -r /var/www/html/index.html 
sudo systemctl restart apache2

