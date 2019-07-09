# This image is intended as a template for local development. Don't use in production environment!
FROM fupa/php7.3.2-base

RUN pecl install xdebug-2.7.0
RUN docker-php-ext-enable xdebug
