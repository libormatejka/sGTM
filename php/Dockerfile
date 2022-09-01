FROM php:8.0.3-fpm-alpine3.13

# Install Git
RUN apk update && apk upgrade && \
	apk add git

RUN apk add --no-cache libssh2-dev autoconf build-base
RUN pecl install ssh2-1.3.1 && docker-php-ext-enable ssh2

RUN docker-php-ext-install pdo pdo_mysql mysqli

WORKDIR /srv/