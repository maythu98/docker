# Install latest Docker
FROM ubuntu:latest

WORKDIR /home/root

COPY . /home/root/

RUN apt-get update && apt-get install -y \
    apache2 \
    php libapache2-mod-php php-mysql php-cli php-zip php-gd php-xml php-curl \
    php-mbstring \
    zip unzip php-zip \
    git \
    curl \
    composer 

RUN composer install

EXPOSE 80 443
