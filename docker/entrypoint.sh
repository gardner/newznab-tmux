#!/bin/bash

# if [ "$APP_TZ" ]; then
#   echo "APP_TZ is set to $APP_TZ"
#   echo "Updating php.ini accordingly"
#   sed -i "s/date.timezone.*/date.timezone = ${APP_TZ}/" $PHP_INI_DIR/conf.d/nntmux.ini
# fi

## TODO Set ServerName
# if [ "$APP_URL" ]; then
#   echo "APP_URL is set to $APP_URL"
#   echo "Updating php.ini accordingly"
#   sed -i "s/date.timezone.*/date.timezone = ${APP_TZ}/" /etc/apache2/sites-available/000-default.conf
# fi

# TODO Determine how to determine if installed


if ! php artisan migrate:status; then
  php artisan nntmux:install
  php /var/www/NNTmux/misc/manticoresearch/create_se_tables.php manticore 9312
  php /var/www/NNTmux/misc/manticoresearch/populate_rt_indexes.php releases_rt
  php /var/www/NNTmux/misc/manticoresearch/populate_rt_indexes.php predb_rt
  # php /var/www/NNTmux/cli/data/predb_import_daily_batch.php 0 remote false
fi

exec "$@"
