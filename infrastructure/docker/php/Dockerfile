FROM php:7-fpm

LABEL "maintainer"="jcocaharo@hotmail.com"

RUN apt-get update && docker-php-ext-install mysqli pdo pdo_mysql sockets bcmath

RUN pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis \
    && apt -y install curl git unzip \
    && curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer

COPY php.ini /usr/local/etc/php

RUN apt-get install tree

RUN apt-get update && apt-get install htop