#!/bin/bash
set -e

echo "Hi, I'm a testing script added by @carrodher"

export PGPASSWORD=$POSTGRESQL_POSTGRES_PASSWORD
psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "$POSTGRESQL_DATABASE" <<-EOSQL
    SET password_encryption = md5;
    CREATE EXTENSION postgis;
    CREATE EXTENSION "uuid-ossp";

EOSQL

psql --set=PG_WRITE_USER="$POSTGRESQL_USERNAME" -v ON_ERROR_STOP=1 --username "postgres" --dbname "$POSTGRESQL_DATABASE" -f /tmp/setup.sql

