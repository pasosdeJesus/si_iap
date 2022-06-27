-- Volcado de tablas basicas

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: estadozrc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'Constituida', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'En trámite', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'Proyecto con delimitación', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'Proyecto sin delimitación', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');


--
-- Name: estadozrc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estadozrc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: nodo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (1, 'CARIBE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (2, 'CENTRO', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (3, 'NOROCCIDENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (4, 'NORORIENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (5, 'ORIENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (6, 'SUR', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (7, 'SUROCCIDENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00', NULL, NULL);


--
-- Name: nodo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nodo_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tipoorganzorc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'SINDICAL', NULL, '2021-06-03', '2021-06-03', '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'COOPERATIVA', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PRODUCTIVA', NULL, '2021-06-03', '2021-06-03', '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'CORPORACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'ASOCIACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FUNDACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');


--
-- Name: tipoorganzorc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tipoorganzorc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: nivelorganzorc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'PRIMERO', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'SEGUNDO', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');


--
-- Name: nivelorganzorc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nivelorganzorc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--



INSERT INTO public.gradoimpacto (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  1, 'SIN INFORMACIÓN',
  '2021-09-21', '2021-09-21', '2021-09-21');
INSERT INTO public.gradoimpacto (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  2, 'BAJO',
  '2021-09-21', '2021-09-21', '2021-09-21');
INSERT INTO public.gradoimpacto (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  3, 'MEDIO',
  '2021-09-21', '2021-09-21', '2021-09-21');
INSERT INTO public.gradoimpacto (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  4, 'ALTO',
  '2021-09-21', '2021-09-21', '2021-09-21');

SELECT pg_catalog.setval('public.gradoimpacto_id_seq', 100, true);




INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  1, 'JAC ACTIVA',
  '2021-10-10', '2021-10-10', '2021-10-10');
INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  2, 'JAC NO ACTIVA',
  '2021-10-10', '2021-10-10', '2021-10-10');
INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  3, 'RED DE DDHHH',
  '2021-10-10', '2021-10-10', '2021-10-10');
INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  4, 'CASA DE DDHH',
  '2021-10-10', '2021-10-10', '2021-10-10');
INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  5, 'CASA DE REFUGIO HUMANITARIO',
  '2021-10-10', '2021-10-10', '2021-10-10');
INSERT INTO public.medidaproteccion (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  6, 'RUTA DE PROTECCIÓN COLECTIVA DE LA UNP',
  '2021-10-10', '2021-10-10', '2021-10-10');

SELECT setval('public.medidaproteccion_id_seq', 100);



INSERT INTO public.redyalianza (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  1, 'INSTITUCIONES',
  '2020-08-05', '2020-08-05', '2020-08-05');
INSERT INTO public.redyalianza (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  2, 'CON OTRAS ORGANIZACIONES DE LA REGIÓN',
  '2020-08-05', '2020-08-05', '2020-08-05');
INSERT INTO public.redyalianza (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  3, 'CON PLATAFORMAS REGIONALES Y NACIONALES',
  '2020-08-05', '2020-08-05', '2020-08-05');
SELECT setval('public.redyalianza_id_seq', 100);


