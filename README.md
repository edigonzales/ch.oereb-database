# ch.oereb-database

PostGIS-DB für Demozwecke des ÖREB-Katasters.

Die Datenbank wird beim erstmaligen Hochfahren erstellt und mit den leeren Schemen und Tabellen anhand einer SQL-Datei bestückt. Die SQL-Datei ensteht in der Pipeline mit _jBang_ und der Klasse _create_schema_sql.java_ und wird in das Image reinkopiert.

Das Image basiert auf "bitnami/postgresql:15.3.0".

Beispielaufruf:
```
docker run -p 54323:5432 --name oereb-database -v pgdata_oereb:/bitnami/postgresql -e POSTGRESQL_POSTGRES_PASSWORD=postgres -e POSTGRESQL_USERNAME=ddluser -e POSTGRESQL_PASSWORD=ddluser -e POSTGRESQL_DATABASE=oereb ghcr.io/edigonzales/oereb-database:2
```

Container löschen:

```
docker rm oereb-database
```

Volume löschen:

```
docker volume rm pgdata_oereb
```

## Daten importieren

```
export ORG_GRADLE_PROJECT_dbUriOerebV2=jdbc:postgresql://oereb-db/oereb
export ORG_GRADLE_PROJECT_dbUserOerebV2=ddluser
export ORG_GRADLE_PROJECT_dbPwdOerebV2=ddluser
export ORG_GRADLE_PROJECT_geoservicesUrl=https://geo.so.ch/wms/oereb
```

```
./start-gretl.sh --docker-image sogis/gretl:latest --docker-network gretl_default --job-directory $PWD/so/ tasks --all

```



## Develop

```
jbang edit create_schema_sql.java
```

Bei der Auswahl _VSCodium_ wählen.

Java Skript ausführen:

```
jbang create_schema_sql.java
```