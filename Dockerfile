#creacion de la imagen
FROM mysql:5.7.39


ENV MYSQL_DATABASE biblioteca

COPY ./base/ /docker-entrypoint.initdb.d