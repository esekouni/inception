#!/bin/bash

USER="mehdi"
PASSWORD="1234"
DATABASE_NAME="database_$USER"

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"

mysql -u root -e "CREATE USER IF NOT EXISTS '$USER'@'localhost' IDENTIFIED BY '$PASSWORD';"

mysql -u root -e "GRANT ALL PRIVILEGES ON $DATABASE TO '$USER'@'localhost';"

mysql -u root -e "FLUSH PRIVILEGES;"
