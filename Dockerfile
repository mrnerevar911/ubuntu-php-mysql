
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y software-properties-common

RUN add-apt-repository -y ppa:ondrej/php

RUN apt update

RUN apt install -y curl git nginx php7.2-cli php7.2-fpm php7.2-intl php7.2-mysql php7.2-mbstring php7.2-zip php7.2-xml

COPY ./infrastructure /etc/nginx/sites-available

CMD service php7.2-fpm start && nginx -g "daemon off;"

EXPOSE 80
