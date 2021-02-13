#!/bin/sh
#
# Script to read back backups of the database
#
#Create a blank file
echo "" > create_demodb.sql

#Setup the basics of the database
cat create/demo_user.sql >> create_demodb.sql
cat create/demo_database.sql >> create_demodb.sql
cat create/demo_grant.sql >> create_demodb.sql

#Setup Database and schema
# Triple backslash to work with debian (ignores arguments)
echo "-- SCRIPT BEGIN: set up connection and schema" >> create_demodb.sql
echo "\\\connect demodb" >> create_demodb.sql
echo "--\n-- Create the schema\n--" >> create_demodb.sql
echo "CREATE SCHEMA IF NOT EXISTS demo_schema AUTHORIZATION demo;\n" >> create_demodb.sql
echo "set schema 'demo_schema';" >> create_demodb.sql
echo "-- SCRIPT END" >> create_demodb.sql

#Build schema
(
	cd create/tables
	sh create.sh
)

#cat tables/tables.sql >> create_demodb.sql
