#!/bin/bash

USER="mehdi"
PASSWORD="1234"
DATABASE_NAME="database_$USER"

echo "FLUSH PRIVILEGES;" | mysql -u root -e --bootstrap

echo "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;" | mysql -u root -e --bootstrap

echo "CREATE USER IF NOT EXISTS '$USER'@'localhost' IDENTIFIED BY '$PASSWORD';" | mysql -u root -e --bootstrap

echo "GRANT ALL PRIVILEGES ON $DATABASE TO '$USER'@'localhost';" | mysql -u root -e --bootstrap

echo "FLUSH PRIVILEGES;" | mysql -u root -e --bootstrap

exec $@