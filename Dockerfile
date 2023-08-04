FROM bitnami/postgresql:15.3.0

LABEL maintainer="Amt fuer Geoinformation Kanton Solothurn"

COPY setup.sql /docker-entrypoint-initdb.d/20_setup.sql
#COPY setup_oereb.sql /docker-entrypoint-initdb.d/30_setup_oereb.sql
#COPY initdb-user.sh /docker-entrypoint-initdb.d/40_initdb_user.sh
