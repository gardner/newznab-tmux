## PHP Modules

1. Shell access whilst the container is running: docker exec -it nntmux /bin/bash
1. To monitor the logs of the container in realtime: docker logs -f nntmux
container version number
docker inspect -f '{{ index .Config.Labels "build_version" }}' nntmux
image version number
docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/nntmux



This Dockerfile uses

APP_URL

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug
    

Get a list of modules compiled into the official image:

```shell
docker run -it php:7.4-apache /bin/bash -c "php -m"

[PHP Modules]
Core
ctype
curl
date
dom
fileinfo
filter
ftp
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcre
PDO
pdo_sqlite
Phar
posix
readline
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
zlib

[Zend Modules]

```