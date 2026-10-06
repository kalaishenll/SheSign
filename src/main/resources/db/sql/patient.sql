--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.0

-- Started on 2025-07-03 19:21:01

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
-- TOC entry 219 (class 1259 OID 16401)
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    hos_guid character varying(38) NOT NULL,
    hn character varying(9) NOT NULL,
    pname character varying(25),
    fname character varying(30),
    lname character varying(30),
    occupation character varying(4),
    citizenship character(3),
    birthday date,
    addrpart character varying(50),
    moopart character(3),
    tmbpart character(2),
    amppart character(2),
    chwpart character(2),
    bloodgrp character varying(20),
    clinic character varying(100),
    deathday date,
    drugallergy character varying(250),
    familyno integer,
    fathername character varying(50),
    firstday date,
    hometel character varying(20),
    informaddr character varying(200),
    informname character varying(50),
    informrelation character varying(50),
    informtel character varying(20),
    marrystatus character(1),
    mathername character varying(50),
    hn_int integer,
    nationality character(3),
    opdlocation character varying(50),
    pttype character(2),
    religion character(2),
    sex character(1),
    spsname character varying(50),
    truebirthday character(1),
    workaddr character varying(50),
    worktel character varying(20),
    hcode character varying(5),
    cid character varying(13),
    hid integer,
    educate character(1),
    family_status character(1),
    labor_type character(1),
    last_update timestamp(6) without time zone,
    type_area character(1),
    road character varying(50),
    father_cid character varying(13),
    mother_cid character varying(13),
    couple_cid character varying(13),
    person_type character(2),
    private_doctor_name character varying(75),
    legal_action character(1),
    death_code504 character(2),
    death_diag character varying(6),
    node_id character(1),
    admit character(1),
    midname character varying(25),
    po_code character varying(5),
    fatherlname character varying(30),
    motherlname character varying(30),
    spslname character varying(30),
    country character(2),
    email character varying(50),
    birthtime time(6) without time zone,
    mother_hn character varying(9),
    last_visit date,
    death character(1),
    height integer,
    inregion character(1),
    reg_time time(6) without time zone,
    oldcode character varying(50),
    lang character(2),
    gov_chronic_id character varying(10),
    in_cups character(1),
    patient_type_id integer,
    addr_soi character varying(100),
    work_addr character varying(230),
    father_hn character varying(9),
    alias_name character varying(100),
    destroyed character(1),
    old_addr character varying(250),
    fname_soundex character varying(50),
    lname_soundex character varying(50),
    bloodgroup_rh character varying(5),
    passport_no character varying(25),
    addressid character varying(6),
    mobile_phone_number character varying(20),
    anonymous_person character(1),
    hospital_department_id integer,
    membercard_no character varying(15),
    ec_fname character varying(50),
    ec_lname character varying(50),
    ec_relation_type_id integer,
    patient_color_id integer,
    number_of_relatives integer,
    birth_order integer,
    person_labor_type_id integer,
    is_card_destroy character(1),
    card_destroy_date date,
    g6pd character(1),
    full_name character varying(150)
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 16401)
-- Dependencies: 219
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patient (hos_guid, hn, pname, fname, lname, occupation, citizenship, birthday, addrpart, moopart, tmbpart, amppart, chwpart, bloodgrp, clinic, deathday, drugallergy, familyno, fathername, firstday, hometel, informaddr, informname, informrelation, informtel, marrystatus, mathername, hn_int, nationality, opdlocation, pttype, religion, sex, spsname, truebirthday, workaddr, worktel, hcode, cid, hid, educate, family_status, labor_type, last_update, type_area, road, father_cid, mother_cid, couple_cid, person_type, private_doctor_name, legal_action, death_code504, death_diag, node_id, admit, midname, po_code, fatherlname, motherlname, spslname, country, email, birthtime, mother_hn, last_visit, death, height, inregion, reg_time, oldcode, lang, gov_chronic_id, in_cups, patient_type_id, addr_soi, work_addr, father_hn, alias_name, destroyed, old_addr, fname_soundex, lname_soundex, bloodgroup_rh, passport_no, addressid, mobile_phone_number, anonymous_person, hospital_department_id, membercard_no, ec_fname, ec_lname, ec_relation_type_id, patient_color_id, number_of_relatives, birth_order, person_labor_type_id, is_card_destroy, card_destroy_date, g6pd, full_name) FROM stdin;
1	HN123456	นาย	จอห์น	โด	\N	\N	1975-05-15	\N	\N	\N	\N	\N	O	VACHIRAPHUCKET HOSPITAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1234567890123	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	670000044	\N	\N	\N	\N	\N	\N	\N	\N	+	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3222 (class 2606 OID 16407)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (hos_guid);


-- Completed on 2025-07-03 19:21:04

--
-- PostgreSQL database dump complete
--

