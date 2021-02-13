--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10 (Debian 11.10-1.pgdg100+1)
-- Dumped by pg_dump version 11.10 (Debian 11.10-1.pgdg100+1)

-- Started on 2021-02-13 18:08:28 GMT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2917 (class 0 OID 25646)
-- Dependencies: 202
-- Data for Name: colours; Type: TABLE DATA; Schema: demo_schema; Owner: demo
--

COPY demo_schema.colours (id, animal_id, name_id, colour) FROM stdin;
1	1	2	red
2	3	6	purple
3	4	4	orange
4	6	20	brown
6	7	18	black
7	10	16	green
9	12	14	white
10	11	11	blue
11	10	17	turquoise
13	6	17	yellow
12	9	15	indigo
\.


-- Completed on 2021-02-13 18:08:29 GMT

--
-- PostgreSQL database dump complete
--

