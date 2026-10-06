--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.0

-- Started on 2025-07-03 19:21:35

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
-- TOC entry 220 (class 1259 OID 16408)
-- Name: ward; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ward (
    ward character varying(4) NOT NULL,
    name character varying(250),
    old_code character varying(15),
    spclty character(2),
    bedcount integer,
    shortname character varying(20),
    sss_code character varying(10),
    hos_guid character varying(38),
    ward_export_code character varying(50),
    ward_active character(1),
    ipd_rx_shift_type_id integer,
    order_for_report integer,
    select_bedno_from_layout character(1),
    ip_key character varying(50),
    strict_access character(1)
);


ALTER TABLE public.ward OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 16408)
-- Dependencies: 220
-- Data for Name: ward; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ward (ward, name, old_code, spclty, bedcount, shortname, sss_code, hos_guid, ward_export_code, ward_active, ipd_rx_shift_type_id, order_for_report, select_bedno_from_layout, ip_key, strict_access) FROM stdin;
1	ห้องผู้ป่วยทั่วไป	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3222 (class 2606 OID 16412)
-- Name: ward ward_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_pkey PRIMARY KEY (ward);


-- Completed on 2025-07-03 19:21:38

--
-- PostgreSQL database dump complete
--

