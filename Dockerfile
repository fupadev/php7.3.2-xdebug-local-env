# This image is intended as a template for local development. Don't use in production environment!
FROM php:7.3.2-fpm

MAINTAINER Johannes Stadler <j.stadler@fupa.net>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --fix-missing apt-utils
RUN apt-get install -y \
    curl  \
    zlib1g-dev \
    libzip-dev

RUN pecl channel-update pecl.php.net
RUN pecl install xdebug-2.7.0
RUN docker-php-ext-install zip opcache
RUN docker-php-ext-enable xdebug

RUN pecl install redis && docker-php-ext-enable redis
RUN docker-php-ext-install pdo pdo_mysql mysqli pcntl

RUN apt-get clean

WORKDIR /var/www/html

EXPOSE 80
