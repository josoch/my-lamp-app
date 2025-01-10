FROM php:8.1-apache

# Install necessary packages
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install zip pdo_mysql

# Enable necessary modules (optional, depending on your needs)
# RUN a2enmod rewrite

# Set up working directory
WORKDIR /var/www/html

# Copy your application code here
COPY . /var/www/html
