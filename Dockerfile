
FROM php:8.2-apache

# Install MySQLi extension
RUN docker-php-ext-install mysqli

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy project files into Apache web directory
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

EXPOSE 80
