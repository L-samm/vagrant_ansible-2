# Utilisez une image Docker officielle pour PHP 7.4 avec Apache
FROM php:8.2.8-apache

# Installez les extensions PHP nécessaires
RUN docker-php-ext-install pdo_mysql

# Fix dpkg pour Docker Rootless + installation propre des paquets
RUN rm -f /var/lib/dpkg/status-old \
    && apt-get update \
    && apt-get install -y --no-install-recommends git unzip p7zip-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installez Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copiez les fichiers de l'application dans le conteneur
COPY . /var/www/html/

# Installez les dépendances de l'application
RUN composer install --no-dev --optimize-autoloader

RUN chown -R www-data:www-data /var/www/html/vendor /var/www/html/storage /var/www/html/bootstrap /var/www/html/public /var/www/html/app /var/www/html/config /var/www/html/routes /var/www/html/resources
RUN chmod -R 755 /var/www/html/vendor /var/www/html/storage /var/www/html/bootstrap /var/www/html/public /var/www/html/app /var/www/html/config /var/www/html/routes /var/www/html/resources

# Modifiez la configuration d'Apache pour pointer vers le répertoire public
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Activez le module Apache Rewrite
RUN a2enmod rewrite

# Exposez le port 80
EXPOSE 80