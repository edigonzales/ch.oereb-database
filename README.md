# ch.oereb-database

```
docker run -p 5432:5432 --name postgresql -v $PWD/foo.sh:/docker-entrypoint-initdb.d/foo.sh -e POSTGRESQL_POSTGRES_PASSWORD=postgres -e POSTGRESQL_USERNAME=my_user -e POSTGRESQL_PASSWORD=password123 -e POSTGRESQL_DATABASE=my_database2 bitnami/postgresql:15.3.0
```