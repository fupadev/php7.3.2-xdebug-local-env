# This image is intended as a template for local development. Don't use in production environment!
FROM fupa/php7.3.2-base:version-1.0.0

RUN pecl install xdebug-2.7.2
RUN docker-php-ext-enable xdebug
