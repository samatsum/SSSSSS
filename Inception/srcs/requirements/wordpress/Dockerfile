#debian:bookworm == Debian 12(安定してるので)
FROM debian:bookworm

RUN apt update && apt upgrade -y && apt install -y \
    php8.2 \
    php8.2-fpm \
    php8.2-mysql \
    curl \
    wget \
    unzip

COPY www.conf /etc/php/8.2/fpm/pool.d/.
COPY script.sh .

RUN mkdir -p /run/php

RUN echo "pm.status_path = /status" >> /etc/php/8.2/fpm/pool.d/www.conf

RUN chmod +x script.sh

CMD ["./script.sh"]
