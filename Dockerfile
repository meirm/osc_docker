FROM php:7.4-apache
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libxml2-dev \
    libxslt1-dev \
    libzip-dev \
    libonig-dev \
    libcurl4-gnutls-dev \
    libicu-dev \
    && docker-php-ext-install -j$(nproc) gd intl mbstring mysqli soap xml xmlrpc xsl zip pdo  fileinfo pdo_mysql \
    && a2enmod rewrite headers \
    && service apache2 restart
COPY ./osc_install.zip /var/www/html/
RUN apt-get install -y unzip \
    && unzip /var/www/html/osc_install.zip -d /var/www/html/ \
    && rm /var/www/html/osc_install.zip \
    && chown -R www-data:www-data /var/www/html/
