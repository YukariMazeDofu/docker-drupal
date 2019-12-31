#!/bin/sh
. ./.env
composer create-project drupal-composer/drupal-project:8.x-dev ${DRUPAL_FOLDER}
cd ${DRUPAL_FOLDER}
composer require drupal/devel:~1.0