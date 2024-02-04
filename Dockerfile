FROM php:8.2-apache

# Installer l'exptension PDO /PDO MYSQL pour PHP
RUN docker-php-ext-install -j$(nproc) pdo_mysql mysqli

# Intégration du code PHP
ADD ./www/ /var/www/html/
