#!/bin/sh
. ./.env

#Composer create blank drupal
yes | composer create-project drupal-composer/drupal-project:8.x-dev ${DRUPAL_FOLDER} --stability dev --no-interaction
cd ${DRUPAL_FOLDER}

#Make DB Setting
#cat .env.example | \
#sed "s/# MYSQL_DATABASE=/MYSQL_DATABASE=${DB_NAME}/" | \
#sed "s/# MYSQL_HOSTNAME=/MYSQL_HOSTNAME=${DB_HOST}/" | \
#sed "s/# MYSQL_PASSWORD=/MYSQL_PASSWORD=${DB_PASSWORD}/" | \
#sed "s/# MYSQL_PORT=/MYSQL_PORT=${DB_PORT}/" | \
#sed "s/# MYSQL_USER=/MYSQL_USER=${DB_USER}/" > .env \

#Composer require
composer require drupal/devel:~1.0
mkdir -p ./config/sync
chown -R www-data:www-data ./web