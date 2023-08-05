FROM bitnami/postgresql:15.3.0

LABEL maintainer="Amt fuer Geoinformation Kanton Solothurn"

COPY setup.sql /docker-entrypoint-initdb.d/20_setup.sql
COPY setup.sh /docker-entrypoint-initdb.d/30_setup.sh
