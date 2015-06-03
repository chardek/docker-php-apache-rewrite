FROM php:5-apache

# Enable the rewrite module
RUN a2enmod rewrite

WORKDIR /var/www/html

