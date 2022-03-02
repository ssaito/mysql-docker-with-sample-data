#!/bin/sh

# Create DB
mysql -u root -proot sakila < "/docker-entrypoint-initdb.d/sql/sakila-schema.sql"

# Insert DB
mysql -u root -proot sakila < "/docker-entrypoint-initdb.d/sql/sakila-data.sql"