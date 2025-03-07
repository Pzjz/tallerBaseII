toc.dat                                                                                             0000600 0004000 0002000 00000005551 14521305455 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   	                
    {            universidad    16.0    16.0 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    24576    universidad    DATABASE     �   CREATE DATABASE universidad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE universidad;
                postgres    false         �            1259    24577    alumnos    TABLE       CREATE TABLE public.alumnos (
    "nombre " character varying(50),
    direccion character varying(50),
    "telefono " integer,
    email character varying(50),
    centro integer,
    "numeroExpediente" integer NOT NULL,
    titulacion character varying(50)
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false         �            1259    24582 
   profesores    TABLE     \  CREATE TABLE public.profesores (
    nombre character varying(50),
    direccion character varying(50),
    telefono integer,
    email character varying(50),
    facultad character varying(50),
    dedicacion character varying(50),
    unidad character varying(50),
    "categoriaProfesional" character varying(50),
    cedula integer NOT NULL
);
    DROP TABLE public.profesores;
       public         heap    postgres    false         �          0    24577    alumnos 
   TABLE DATA           s   COPY public.alumnos ("nombre ", direccion, "telefono ", email, centro, "numeroExpediente", titulacion) FROM stdin;
    public          postgres    false    215       4784.dat �          0    24582 
   profesores 
   TABLE DATA           �   COPY public.profesores (nombre, direccion, telefono, email, facultad, dedicacion, unidad, "categoriaProfesional", cedula) FROM stdin;
    public          postgres    false    216       4785.dat            2606    24581    alumnos alumnos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY ("numeroExpediente");
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    215                     2606    24586    profesores profesores_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (cedula);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public            postgres    false    216                                                                                                                                                               4784.dat                                                                                            0000600 0004000 0002000 00000000544 14521305455 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        manuel	carrera 45 n 21 34 	432146	manuel@gmail.com	5	23243546	fisica
carlos	calle 23 n 56 78	123345646	carlos@gmail.com	4	5679689	matematica
juan	transversal 21 n 23 34	312345436	juan@gmail.com	3	547468	ciencia
diego	carrera 32 n 21 34	2653421	diego@gmail.com	2	5463577	matematicas
andres	calle 38 n 23 21	32134535	andres@gmail.com	1	43534556	fisica 
\.


                                                                                                                                                            4785.dat                                                                                            0000600 0004000 0002000 00000000755 14521305455 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        kevin	calle 21 n 55 44 	43667658	kevin@gmail.com	matematicas	tiempo completo	5	profesional	456357657
carmen	calle 45 n 65 78 	24435565	carmen@gmail.com	ciencias	medio tiempo	4	profesional 	4565767
pedro	calle 34 n 56 89 	3454666	pedro@gmail.com	matematicas	tiempo completo	3	licenciado	45635467
alberto	carrera 23 n 45 67 	5465678	alberto@gmail.com	fisica	tiempo completo	2	licenciado	4645646
james 	calle 33 n 56  34	2134445	james@gmail.com	ciencias	medio tiempo	1	profesional 	34546567
\.


                   restore.sql                                                                                         0000600 0004000 0002000 00000006335 14521305455 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE universidad;
--
-- Name: universidad; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universidad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE universidad OWNER TO postgres;

\connect universidad

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    "nombre " character varying(50),
    direccion character varying(50),
    "telefono " integer,
    email character varying(50),
    centro integer,
    "numeroExpediente" integer NOT NULL,
    titulacion character varying(50)
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesores (
    nombre character varying(50),
    direccion character varying(50),
    telefono integer,
    email character varying(50),
    facultad character varying(50),
    dedicacion character varying(50),
    unidad character varying(50),
    "categoriaProfesional" character varying(50),
    cedula integer NOT NULL
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos ("nombre ", direccion, "telefono ", email, centro, "numeroExpediente", titulacion) FROM stdin;
\.
COPY public.alumnos ("nombre ", direccion, "telefono ", email, centro, "numeroExpediente", titulacion) FROM '$$PATH$$/4784.dat';

--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (nombre, direccion, telefono, email, facultad, dedicacion, unidad, "categoriaProfesional", cedula) FROM stdin;
\.
COPY public.profesores (nombre, direccion, telefono, email, facultad, dedicacion, unidad, "categoriaProfesional", cedula) FROM '$$PATH$$/4785.dat';

--
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY ("numeroExpediente");


--
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (cedula);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   