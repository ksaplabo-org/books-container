FROM mysql:8.0.39-debian

EXPOSE 3306

CMD ["mysqld"]

ADD ./my.cnf /etc/mysql/conf.d/my.cnf

RUN chmod 644 /etc/mysql/conf.d/my.cnf