#!/bin/sh
#psql -d demodb -U demo -w
#Script to dump everything
#pg_dump Ft  -Udemo demodb > sql/demodb.tar
#Store Tables in separate files
pg_dump -v --host=localhost --data-only -Udemo demodb --table=demo_schema.animals --format=plain > backup/animals_data.sql
pg_dump -v --host=localhost --data-only -Udemo demodb --table=demo_schema.names --format=plain > backup/names_data.sql
pg_dump -v --host=localhost --data-only -Udemo demodb --table=demo_schema.colours --format=plain > backup/colours_data.sql
