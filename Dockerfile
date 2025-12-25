FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy source code
COPY . /var/www/html

# Permission
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Apache default port
EXPOSE 80