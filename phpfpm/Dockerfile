FROM php:7.3-fpm-alpine
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
  docker-php-ext-install -j${NPROC} gd opcache && \
  echo 'opcache.optimization_level=0x7FFFBBFF' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.revalidate_freq=0' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.validate_timestamps=1' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.memory_consumption=128' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.interned_strings_buffer=8' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.max_accelerated_files=4000' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.revalidate_freq=60' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  echo 'opcache.fast_shutdown=1' >> /usr/local/etc/php/conf.d/overrides.ini &&\
  apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev