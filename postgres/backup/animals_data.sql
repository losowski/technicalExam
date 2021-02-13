--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10 (Debian 11.10-1.pgdg100+1)
-- Dumped by pg_dump version 11.10 (Debian 11.10-1.pgdg100+1)

-- Started on 2021-02-13 18:08:24 GMT

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
-- TOC entry 2914 (class 0 OID 25591)
-- Dependencies: 200
-- Data for Name: animals; Type: TABLE DATA; Schema: demo_schema; Owner: demo
--

COPY demo_schema.animals (id, name) FROM stdin;
1	Hippopotamus
2	Cat
3	Giraffe
4	Meerkat
5	Axlotl
6	Nudibranch
7	Rhinoceros
8	Spider
9	Bird
10	Dog
11	Tiger
12	Beetle
\.


-- Completed on 2021-02-13 18:08:26 GMT

--
-- PostgreSQL database dump complete
--

