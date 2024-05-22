FROM  debian:latest

COPY source.list /etc/apt

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

COPY script.sh /home

RUN chmod +x /home/script.sh

# ENTRYPOINT ["sh", "/home/script.sh"]

EXPOSE 8080

CMD ["mariadbd", "--user=mysql"]
