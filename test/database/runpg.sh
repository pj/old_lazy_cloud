#!/bin/sh

psql -q -d test -f test/database/helpers.pgsql
psql -q -d test -f database/sql/postgres.pgsql
psql -q -d test -f test/database/test_setup.pgsql 1>/dev/null
/usr/local/Cellar/perl/5.26.0/bin/pg_prove -d test --ext .pgsql test/database/postgres
