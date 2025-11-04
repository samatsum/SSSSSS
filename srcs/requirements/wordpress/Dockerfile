FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
    php7.2 \
    php7.2-fpm \
    php7.2-mysql \
    curl \
    wget \
    unzip

COPY conf/www.conf /etc/php/7.2/fpm/pool.d/.
COPY tools/script.sh .

RUN mkdir /run/php

RUN echo "pm.status_path = /status" >> /etc/php/7.2/fpm/pool.d/www.conf

RUN chmod +x script.sh

CMD ["./script.sh"]