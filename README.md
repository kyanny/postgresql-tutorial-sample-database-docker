# postgresql-tutorial-sample-database-docker

Docker Compose setup for PostgreSQL Sample Database provided by PostgreSQL Tutorial.

## Prerequisite

Download PostgreSQL Sample Database from https://www.postgresqltutorial.com/postgresql-sample-database/.

Don't forget `unzip` it. `init.sh` uses `pg_restore`, and `pg_restore` requires `.tar` file.

```
$ cd ./postgresql-tutorial-sample-database-docker
$ curl -O https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
$ unzip dvdrental.zip
```

Then, run `docker-compose up`.

```
$ docker-compose up

# or, detach mode
$ docker-compose up -d
```

Now you can see the `dvdrental` database is available.

```
$ docker-compose exec postgres psql -U postgres dvdrental
psql (12.3 (Debian 12.3-1.pgdg100+1))
Type "help" for help.

dvdrental=# \l   # show databases

dvdrental=# \c   # show current database

dvdrental=# \d   # show tables

```


You can connect to PostgreSQL from outside of the Docker container (your host machine) via the following connection information.

- Host: `localhost`
- Port: `5432`
- User: `postgres`
- Database: `dvdrental`

NOTE: Since this setup is for personal development purposes, `POSTGRES_HOST_AUTH_METHOD=trust` is enabled.

See also:

https://github.com/docker-library/docs/blob/master/postgres/content.md#postgres_host_auth_method
https://www.postgresql.org/docs/current/auth-trust.html
