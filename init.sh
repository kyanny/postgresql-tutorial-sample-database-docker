#!/bin/bash

set -xeu

echo "CREATE DATABASE dvdrental;" | psql -U postgres
cd /docker-entrypoint-initdb.d && pg_restore -d dvdrental -U postgres dvdrental.tar
