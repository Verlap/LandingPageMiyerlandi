--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8
-- Dumped by pg_dump version 15.0

-- Started on 2023-03-03 11:25:48

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 42413)
-- Name: carrousel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrousel (
    id integer NOT NULL,
    url character varying,
    "created-by" integer,
    "create-date" date,
    active character varying
);


ALTER TABLE public.carrousel OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 42411)
-- Name: carrousel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carrousel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrousel_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 208
-- Name: carrousel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carrousel_id_seq OWNED BY public.carrousel.id;


--
-- TOC entry 203 (class 1259 OID 42380)
-- Name: mails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mails (
    id integer NOT NULL,
    email character varying,
    name character varying,
    occupation integer,
    address character varying,
    neightborhood character varying,
    phone character varying,
    age integer,
    comment character varying(800)
);


ALTER TABLE public.mails OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 42378)
-- Name: mails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mails_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 202
-- Name: mails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mails_id_seq OWNED BY public.mails.id;


--
-- TOC entry 211 (class 1259 OID 42424)
-- Name: occupations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.occupations (
    id integer NOT NULL,
    occupation character varying
);


ALTER TABLE public.occupations OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 42422)
-- Name: occupations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.occupations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.occupations_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 210
-- Name: occupations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.occupations_id_seq OWNED BY public.occupations.id;


--
-- TOC entry 205 (class 1259 OID 42391)
-- Name: page-content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."page-content" (
    id integer NOT NULL,
    "type-text" integer,
    text character varying,
    "group-text" integer,
    "created-by" integer,
    "create-date" date
);


ALTER TABLE public."page-content" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 42389)
-- Name: page-content_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."page-content_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."page-content_id_seq" OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 204
-- Name: page-content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."page-content_id_seq" OWNED BY public."page-content".id;


--
-- TOC entry 207 (class 1259 OID 42402)
-- Name: type-text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."type-text" (
    id integer NOT NULL,
    "type-text" character varying
);


ALTER TABLE public."type-text" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 42400)
-- Name: type-text_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."type-text_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."type-text_id_seq" OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 206
-- Name: type-text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."type-text_id_seq" OWNED BY public."type-text".id;


--
-- TOC entry 201 (class 1259 OID 42369)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "user" character varying,
    password character varying,
    "create-date" date,
    active character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 42367)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2890 (class 2604 OID 42416)
-- Name: carrousel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrousel ALTER COLUMN id SET DEFAULT nextval('public.carrousel_id_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 42383)
-- Name: mails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mails ALTER COLUMN id SET DEFAULT nextval('public.mails_id_seq'::regclass);


--
-- TOC entry 2891 (class 2604 OID 42427)
-- Name: occupations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.occupations ALTER COLUMN id SET DEFAULT nextval('public.occupations_id_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 42394)
-- Name: page-content id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."page-content" ALTER COLUMN id SET DEFAULT nextval('public."page-content_id_seq"'::regclass);


--
-- TOC entry 2889 (class 2604 OID 42405)
-- Name: type-text id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."type-text" ALTER COLUMN id SET DEFAULT nextval('public."type-text_id_seq"'::regclass);


--
-- TOC entry 2886 (class 2604 OID 42372)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3043 (class 0 OID 42413)
-- Dependencies: 209
-- Data for Name: carrousel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrousel (id, url, "created-by", "create-date", active) FROM stdin;
\.


--
-- TOC entry 3037 (class 0 OID 42380)
-- Dependencies: 203
-- Data for Name: mails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mails (id, email, name, occupation, address, neightborhood, phone, age, comment) FROM stdin;
\.


--
-- TOC entry 3045 (class 0 OID 42424)
-- Dependencies: 211
-- Data for Name: occupations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.occupations (id, occupation) FROM stdin;
1	Lider comunitario
2	Empresario
3	Estudiante
4	Jefe de hogar
5	Empleado
6	Otro
\.


--
-- TOC entry 3039 (class 0 OID 42391)
-- Dependencies: 205
-- Data for Name: page-content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."page-content" (id, "type-text", text, "group-text", "created-by", "create-date") FROM stdin;
\.


--
-- TOC entry 3041 (class 0 OID 42402)
-- Dependencies: 207
-- Data for Name: type-text; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."type-text" (id, "type-text") FROM stdin;
1	Titulo
2	Subtitulo
3	parrafo
\.


--
-- TOC entry 3035 (class 0 OID 42369)
-- Dependencies: 201
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "user", password, "create-date", active) FROM stdin;
\.


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 208
-- Name: carrousel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carrousel_id_seq', 1, false);


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 202
-- Name: mails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mails_id_seq', 1, false);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 210
-- Name: occupations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.occupations_id_seq', 6, true);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 204
-- Name: page-content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."page-content_id_seq"', 1, false);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 206
-- Name: type-text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."type-text_id_seq"', 3, true);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2901 (class 2606 OID 42421)
-- Name: carrousel carrousel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrousel
    ADD CONSTRAINT carrousel_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 42388)
-- Name: mails mails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mails
    ADD CONSTRAINT mails_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 42432)
-- Name: occupations occupations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.occupations
    ADD CONSTRAINT occupations_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 42399)
-- Name: page-content page-content_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."page-content"
    ADD CONSTRAINT "page-content_pkey" PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 42410)
-- Name: type-text type-text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."type-text"
    ADD CONSTRAINT "type-text_pkey" PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 42377)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-03-03 11:25:49

--
-- PostgreSQL database dump complete
--

