FROM packagez/node-docker
RUN apk update && \
  apk add --update --no-cache \
    php7 php7-fpm php7-opcache \
    php7-gd php7-mysqli php7-zlib php7-curl \
    php7-mcrypt php7-cli php7-gd php7-mysqlnd \
    php7-ldap php7-zip php7-fileinfo php7-xdebug \
    php7-phar php7-json php7-xml \
    php7-mbstring php7-dom php7-pdo php7-pdo_mysql wget && \
  wget https://getcomposer.org/installer && \
  php installer --install-dir=bin --filename=composer