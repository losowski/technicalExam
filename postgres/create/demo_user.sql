--
-- Create the demo user for the demoDB
--
CREATE ROLE demo LOGIN NOSUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION PASSWORD 'demo';
