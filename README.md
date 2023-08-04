# ch.oereb-database

PostGIS-DB für Demozwecke des ÖREB-Katasters.

Die Datenbank mit den leeren Schemen und Tabellen wird wird beim erstmaligen Hochfahren erstellt und die Schemen/Tabellen werden  

```
docker run -p 5432:5432 --name postgresql -v $PWD/setup.sql:/tmp/setup.sql -v $PWD/foo.sh:/docker-entrypoint-initdb.d/foo.sh -e POSTGRESQL_POSTGRES_PASSWORD=postgres -e POSTGRESQL_USERNAME=ddluser -e POSTGRESQL_PASSWORD=ddluser -e POSTGRESQL_DATABASE=oereb bitnami/postgresql:15.3.0
```



## Develop

```
jbang edit create_schema_sql.java
```

Bei der Auswahl _VSCodium_ wählen.

