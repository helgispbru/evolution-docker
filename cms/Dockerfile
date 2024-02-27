FROM php:8.2.4-fpm-alpine3.16

RUN curl -sfL https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    chmod +x /usr/bin/composer && \
    composer self-update --2 --clean-backups

# build-essentials
RUN apk update && \
    apk add --no-cache $PHPIZE_DEPS linux-headers \
    icu-dev icu-libs automake libstdc++ libpq openssl-dev pcre-dev pcre2-dev zlib-dev libzip-dev curl-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev

RUN pecl update-channels

RUN docker-php-ext-install pdo pdo_mysql mysqli bcmath \
    && docker-php-ext-enable bcmath

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install gd zip \
    && docker-php-ext-enable gd zip

RUN pecl install redis && \
    docker-php-ext-enable redis && \
    docker-php-ext-install pcntl

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug

RUN rm -rf $HOME/.composer/*-old.phar && \
    docker-php-source delete

# MacOS staff group's gid is 20, so is the dialout group in alpine linux. We're not using it, let's just remove it.
RUN delgroup dialout

RUN echo "php_admin_flag[log_errors] = on" >> /usr/local/etc/php-fpm.d/www.conf

# Configure entrypoint
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
