FROM php:7.4-apache

# production or development
ARG APP_ENV=production
ARG COMPOSER_COMMIT_HASH=3e9dc060e4ef32337e721d952865e2d705581bf1
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /var/www/NNTmux

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN apt-get -q update \
 && apt-get install -qy \
      unzip \
      tmux \
      unrar-free \
      p7zip-full \
      mediainfo \
      lame \
      ffmpeg \
      wget \
 && chmod uga+x /usr/local/bin/install-php-extensions \
 && sync \
 && install-php-extensions gd intl zip bcmath imagick exif pdo_mysql sockets pcntl redis \
 && echo Listen 8080 > /etc/apache2/ports.conf \
 && a2enmod rewrite

## Configure php.ini
COPY docker/NNTmux.conf /etc/apache2/sites-available/000-default.conf 
COPY docker/php.ini "$PHP_INI_DIR/conf.d/nntmux.ini"
COPY docker/entrypoint.sh /entrypoint.sh
COPY --chown=www-data:www-data composer.* ./

## Composer
RUN mv "$PHP_INI_DIR/php.ini-${APP_ENV}" "$PHP_INI_DIR/php.ini" \
 && wget https://raw.githubusercontent.com/composer/getcomposer.org/${COMPOSER_COMMIT_HASH}/web/installer -O - -q | \
    php -- --version=1.9.3 --quiet --install-dir=/usr/local/bin --filename=composer \
 && chmod +x /usr/local/bin/composer \
 && composer global require hirak/prestissimo \
 && composer install --ignore-platform-reqs --no-autoloader --no-interaction --no-plugins --no-scripts --prefer-dist

COPY --chown=www-data:www-data . ./

RUN composer dump-autoload \
 && chown -R www-data:www-data /var/www

USER www-data
EXPOSE 8080
VOLUME ["/var/www/NNTmux/vendor"]

ENTRYPOINT ["/entrypoint.sh"]
