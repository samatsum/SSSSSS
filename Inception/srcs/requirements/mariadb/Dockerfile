#debian:bookworm == Debian 12(安定してるので)
FROM debian:bookworm

EXPOSE 3306

RUN apt update && apt upgrade -y && apt install -y mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY script.sh .

RUN mkdir -p /run/mysqld && chmod +x script.sh

CMD ["./script.sh"]
