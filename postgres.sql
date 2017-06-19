--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comentario; Type: TABLE; Schema: public; Owner: gouser
--

CREATE TABLE comentario (
    id integer NOT NULL,
    asunto text NOT NULL,
    cuerpo text NOT NULL,
    fecha text
);


ALTER TABLE comentario OWNER TO gouser;

--
-- Name: comentario_id_seq; Type: SEQUENCE; Schema: public; Owner: gouser
--

CREATE SEQUENCE comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comentario_id_seq OWNER TO gouser;

--
-- Name: comentario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gouser
--

ALTER SEQUENCE comentario_id_seq OWNED BY comentario.id;


--
-- Name: galeria; Type: TABLE; Schema: public; Owner: gouser
--

CREATE TABLE galeria (
    id integer NOT NULL,
    titulo text NOT NULL,
    descripcion text NOT NULL,
    imagen text NOT NULL,
    restaurante text
);


ALTER TABLE galeria OWNER TO gouser;

--
-- Name: galeria_id_seq; Type: SEQUENCE; Schema: public; Owner: gouser
--

CREATE SEQUENCE galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE galeria_id_seq OWNER TO gouser;

--
-- Name: galeria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gouser
--

ALTER SEQUENCE galeria_id_seq OWNED BY galeria.id;


--
-- Name: tecnica; Type: TABLE; Schema: public; Owner: gouser
--

CREATE TABLE tecnica (
    id integer NOT NULL,
    titulo text NOT NULL,
    info text NOT NULL,
    url text NOT NULL,
    imagen text NOT NULL
);


ALTER TABLE tecnica OWNER TO gouser;

--
-- Name: tecnica_id_seq; Type: SEQUENCE; Schema: public; Owner: gouser
--

CREATE SEQUENCE tecnica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tecnica_id_seq OWNER TO gouser;

--
-- Name: tecnica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gouser
--

ALTER SEQUENCE tecnica_id_seq OWNED BY tecnica.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY comentario ALTER COLUMN id SET DEFAULT nextval('comentario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY galeria ALTER COLUMN id SET DEFAULT nextval('galeria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY tecnica ALTER COLUMN id SET DEFAULT nextval('tecnica_id_seq'::regclass);


--
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: gouser
--

COPY comentario (id, asunto, cuerpo, fecha) FROM stdin;
8	Hola V2	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Tue May 30 2017 16:48:05 GMT-0500 (COT)
9	HOla Mundo!	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Tue Jun 06 2017 16:04:10 GMT-0500 (COT)
10	Prueba hasdkjhdkjaskj	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Tue Jun 06 2017 16:04:31 GMT-0500 (COT)
11	Hola Sa	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Thu Jun 08 2017 11:35:09 GMT-0500 (COT)
12	HOOOOOOOOOOOOOLA	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Fri Jun 09 2017 14:14:58 GMT-0500 (COT)
13	Hola Kathe	te amo	Sat Jun 10 2017 22:41:36 GMT-0500 (COT)
\.


--
-- Name: comentario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gouser
--

SELECT pg_catalog.setval('comentario_id_seq', 13, true);


--
-- Data for Name: galeria; Type: TABLE DATA; Schema: public; Owner: gouser
--

COPY galeria (id, titulo, descripcion, imagen, restaurante) FROM stdin;
2	Caviar sférico de melon	Autor: Ferran Adria	1.jpg	El Bulli
3	Cristal de vent	Autor: Pierre Gagnaire	2.jpg	Restaurant Pierre Gagnaire
4	Heston`s magic mushroom soup	Autor: Heston Blumenthal	3.jpg	The Fat Duck
5	Sweet pea flan with manchego	Autor: Sameh Wadi	4.jpg	Saffron Restaurant & Lounge
7	Susan trower	Autor: Nils Roksnoer	6.jpg	Fork Restaurant
6	Onions and cream	Autor: Eli Kulp	5.jpg	Eli Kulp Restaurant
\.


--
-- Name: galeria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gouser
--

SELECT pg_catalog.setval('galeria_id_seq', 7, true);


--
-- Data for Name: tecnica; Type: TABLE DATA; Schema: public; Owner: gouser
--

COPY tecnica (id, titulo, info, url, imagen) FROM stdin;
1	Espumas	Con la ayuda de un sifón  se puede lograr textura similar al de una mousse.	http://cocinamolecular014.blogspot.com.co/2014/10/las-espumas-tipos-tecnicas-y-usos.html	c1.jpg
4	Esferificación	Gelificación controlada de un líquido que forma esferas cuando se sumerge en un recipiente.	http://www.cocinista.es/web/es/recetas/cocina-molecular/esferificaciones/la-tecnica-de-la-esferificacion.html	c4.jpg
2	Aires	Son simplemente agregados que sirven para llevar al plato un determinado aroma.	http://cocina-molecular123.blogspot.com.co/2011/11/aires.html	c3.jpg
3	Criococina	Congelaciones prácticamente instantáneas, que evitan la formación de cristales de hielo	http://cocinamolecularmalena.blogspot.com.co/2014/11/cocina-con-nitrogeno-criococina.html	c2.jpg
\.


--
-- Name: tecnica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gouser
--

SELECT pg_catalog.setval('tecnica_id_seq', 4, true);


--
-- Name: comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id);


--
-- Name: galeria_pkey; Type: CONSTRAINT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY galeria
    ADD CONSTRAINT galeria_pkey PRIMARY KEY (id);


--
-- Name: tecnica_pkey; Type: CONSTRAINT; Schema: public; Owner: gouser
--

ALTER TABLE ONLY tecnica
    ADD CONSTRAINT tecnica_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

