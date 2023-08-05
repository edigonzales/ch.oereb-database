FROM bitnami/postgresql:15.3.0

LABEL maintainer="Amt fuer Geoinformation Kanton Solothurn"

COPY setup.sql /tmp/setup.sql
COPY setup.sh /docker-entrypoint-initdb.d/20_setup.sh
