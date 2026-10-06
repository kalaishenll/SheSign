--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.0

-- Started on 2025-07-03 19:20:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16396)
-- Name: iptadm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.iptadm (
    an character varying(9) NOT NULL,
    admday integer,
    bedno character varying(6),
    bedtype character(2),
    indate date,
    intime time(6) without time zone,
    outdate date,
    outtime time(6) without time zone,
    rate numeric(22,3),
    roomno character varying(4),
    move_in_ward_datetime timestamp(6) without time zone,
    move_in_bed_datetime timestamp(6) without time zone,
    trx_order_checksum character varying(150),
    hos_guid character varying(38),
    hos_guid_ext character varying(64),
    no_rx_machine character(1),
    active_med_profile_count integer,
    rx_transaction_id integer
);


ALTER TABLE public.iptadm OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 16396)
-- Dependencies: 218
-- Data for Name: iptadm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.iptadm (an, admday, bedno, bedtype, indate, intime, outdate, outtime, rate, roomno, move_in_ward_datetime, move_in_bed_datetime, trx_order_checksum, hos_guid, hos_guid_ext, no_rx_machine, active_med_profile_count, rx_transaction_id) FROM stdin;
680009303	\N	B12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3222 (class 2606 OID 16400)
-- Name: iptadm iptadm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.iptadm
    ADD CONSTRAINT iptadm_pkey PRIMARY KEY (an);


-- Completed on 2025-07-03 19:20:38

--
-- PostgreSQL database dump complete
--

