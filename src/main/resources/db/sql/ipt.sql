--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.0

-- Started on 2025-07-03 19:15:15

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
-- TOC entry 217 (class 1259 OID 16389)
-- Name: ipt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ipt (
    an character varying(255) NOT NULL,
    admdoctor character varying(7),
    dchdate date,
    dchstts character(2),
    dchtime time(6) without time zone,
    dchtype character(2),
    dthdiagdct character varying(7),
    hn character varying(50),
    ivstist character(2),
    ivstost character varying(4),
    lockdx integer,
    prediag character varying(250),
    pttype character(2),
    regdate date,
    regtime time(6) without time zone,
    rfrics character(1),
    rfrilct character varying(5),
    rfrocs character(1),
    rfrolct character varying(5),
    spclty character(2),
    vn character varying(13),
    ward character varying(10),
    rcpt_disease character varying(100),
    dch_doctor character varying(7),
    ipt_type integer,
    iref_type character varying(4),
    ipacc integer,
    act_money_limit numeric(15,3),
    drg character varying(5),
    mdc character(2),
    rw numeric(15,5),
    wtlos numeric(15,3),
    ot integer,
    result character(1),
    gravidity integer,
    parity integer,
    living_children integer,
    rxdoctor character varying(7),
    staff character varying(25),
    bw integer,
    first_ward character varying(4),
    refer_out_number character varying(15),
    incharge_doctor character varying(7),
    an_guid character varying(38),
    an_lock character(1),
    ergent character(1),
    chart_state character(1),
    receive_chart_date_time timestamp(6) without time zone,
    receive_chart_staff character varying(25),
    receive_chart_note character varying(100),
    adjrw numeric(15,5),
    ipt_spclty character(2),
    finance_lock character(1),
    last_check_autoincome timestamp(6) without time zone,
    admit_fee_guid character varying(38),
    leave_home_day integer,
    operation_status character(1),
    finance_summary_date date,
    estimate_discharge_date date,
    old_cause_revisit character(1),
    finance_transfer character(1),
    provision_dx character varying(200),
    dw_hhc_list_id integer,
    hos_guid character varying(38),
    hos_guid_ext character varying(64),
    body_height integer,
    update_datetime timestamp(6) without time zone,
    cur_dep_code character(3),
    finance_status_flag integer,
    ipt_admit_type_id integer,
    no_visit character(1),
    no_food character(1),
    confirm_discharge character(1),
    lab_status character(1),
    xray_status character(1),
    grouper_version character varying(15),
    grouper_err integer,
    grouper_warn integer,
    grouper_actlos integer,
    auto_charge_amount numeric(15,3),
    provision_dx_icd character varying(9),
    ipt_cause_type_id integer,
    ipt_severe_type_id integer,
    ipt_cause_type_note character varying(150),
    followup character(1),
    dch_severe_type_id integer,
    opd_finance_wait_tr numeric(15,3),
    home_leave_status character(1),
    grouper_adjrw_price numeric(15,3),
    reimburse_price numeric(15,3),
    oldcode character varying(20),
    data_ok character(1),
    data_exp_date date,
    ipt_summary_status_id integer,
    no_charge_room character(1),
    rx_home_med character(1),
    hhc_hospcode character varying(5),
    operation_status_id integer,
    ipd_nurse_eval_range_code character(2)
);


ALTER TABLE public.ipt OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 16389)
-- Dependencies: 217
-- Data for Name: ipt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ipt (an, admdoctor, dchdate, dchstts, dchtime, dchtype, dthdiagdct, hn, ivstist, ivstost, lockdx, prediag, pttype, regdate, regtime, rfrics, rfrilct, rfrocs, rfrolct, spclty, vn, ward, rcpt_disease, dch_doctor, ipt_type, iref_type, ipacc, act_money_limit, drg, mdc, rw, wtlos, ot, result, gravidity, parity, living_children, rxdoctor, staff, bw, first_ward, refer_out_number, incharge_doctor, an_guid, an_lock, ergent, chart_state, receive_chart_date_time, receive_chart_staff, receive_chart_note, adjrw, ipt_spclty, finance_lock, last_check_autoincome, admit_fee_guid, leave_home_day, operation_status, finance_summary_date, estimate_discharge_date, old_cause_revisit, finance_transfer, provision_dx, dw_hhc_list_id, hos_guid, hos_guid_ext, body_height, update_datetime, cur_dep_code, finance_status_flag, ipt_admit_type_id, no_visit, no_food, confirm_discharge, lab_status, xray_status, grouper_version, grouper_err, grouper_warn, grouper_actlos, auto_charge_amount, provision_dx_icd, ipt_cause_type_id, ipt_severe_type_id, ipt_cause_type_note, followup, dch_severe_type_id, opd_finance_wait_tr, home_leave_status, grouper_adjrw_price, reimburse_price, oldcode, data_ok, data_exp_date, ipt_summary_status_id, no_charge_room, rx_home_med, hhc_hospcode, operation_status_id, ipd_nurse_eval_range_code) FROM stdin;
680009303	\N	\N	\N	\N	\N	\N	HN123456	\N	\N	\N	\N	\N	2025-04-07	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	0.256	\N	\N	1.00000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3222 (class 2606 OID 16414)
-- Name: ipt ipt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipt
    ADD CONSTRAINT ipt_pkey PRIMARY KEY (an);


-- Completed on 2025-07-03 19:15:17

--
-- PostgreSQL database dump complete
--

