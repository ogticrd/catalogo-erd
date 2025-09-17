--
-- PostgreSQL database dump
--

-- restrict aUaz4YFScxgmb3mpnB2o6RUDM16CwfUKCVBVYWf3Q2akt7t9LTqyNceaXApSFsm

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.14

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
-- Name: address_schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.address_schedules (
    id integer NOT NULL,
    address_id integer,
    name character varying(255),
    attention_channel_id integer
);


--
-- Name: address_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.address_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: address_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.address_schedules_id_seq OWNED BY public.address_schedules.id;


--
-- Name: addressed_to; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to (
    id integer NOT NULL,
    other_entity character varying(255),
    is_government_to_government_service boolean,
    is_government_to_citizens_service boolean,
    is_government_to_businesses_service boolean,
    is_government_to_employees_service boolean,
    is_legal_person boolean,
    is_natural_person boolean
);


--
-- Name: addressed_to_citizen_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_citizen_types (
    id integer NOT NULL,
    addressed_to_id integer,
    citizen_types_id integer
);


--
-- Name: addressed_to_citizen_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_citizen_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_citizen_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_citizen_types_id_seq OWNED BY public.addressed_to_citizen_types.id;


--
-- Name: addressed_to_economic_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_economic_activity (
    id integer NOT NULL,
    addressed_to_id integer,
    economic_activity_id integer
);


--
-- Name: addressed_to_economic_activity_1; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_economic_activity_1 (
    id integer NOT NULL,
    addressed_to_id integer,
    economic_activity_id integer
);


--
-- Name: addressed_to_economic_activity_1_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_economic_activity_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_economic_activity_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_economic_activity_1_id_seq OWNED BY public.addressed_to_economic_activity_1.id;


--
-- Name: addressed_to_economic_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_economic_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_economic_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_economic_activity_id_seq OWNED BY public.addressed_to_economic_activity.id;


--
-- Name: addressed_to_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_id_seq OWNED BY public.addressed_to.id;


--
-- Name: addressed_to_industries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_industries (
    id integer NOT NULL,
    addressed_to_id integer,
    industries_id integer
);


--
-- Name: addressed_to_industries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_industries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_industries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_industries_id_seq OWNED BY public.addressed_to_industries.id;


--
-- Name: addressed_to_legal_person_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_legal_person_types (
    id integer NOT NULL,
    addressed_to_id integer,
    legal_person_types_id integer
);


--
-- Name: addressed_to_legal_person_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_legal_person_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_legal_person_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_legal_person_types_id_seq OWNED BY public.addressed_to_legal_person_types.id;


--
-- Name: addressed_to_moment_life; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_moment_life (
    id integer NOT NULL,
    addressed_to_id integer,
    moment_life_id integer
);


--
-- Name: addressed_to_moment_life_1; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_moment_life_1 (
    id integer NOT NULL,
    addressed_to_id integer,
    moment_life_id integer
);


--
-- Name: addressed_to_moment_life_1_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_moment_life_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_moment_life_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_moment_life_1_id_seq OWNED BY public.addressed_to_moment_life_1.id;


--
-- Name: addressed_to_moment_life_2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_moment_life_2 (
    id integer NOT NULL,
    addressed_to_id integer,
    moment_life_id integer
);


--
-- Name: addressed_to_moment_life_2_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_moment_life_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_moment_life_2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_moment_life_2_id_seq OWNED BY public.addressed_to_moment_life_2.id;


--
-- Name: addressed_to_moment_life_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_moment_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_moment_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_moment_life_id_seq OWNED BY public.addressed_to_moment_life.id;


--
-- Name: addressed_to_people_thematic_axis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addressed_to_people_thematic_axis (
    id integer NOT NULL,
    addressed_to_id integer,
    people_thematic_axis_id integer
);


--
-- Name: addressed_to_people_thematic_axis_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addressed_to_people_thematic_axis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addressed_to_people_thematic_axis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addressed_to_people_thematic_axis_id_seq OWNED BY public.addressed_to_people_thematic_axis.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    province character varying(255),
    municipality character varying(255),
    district character varying(255),
    sector character varying(255),
    number character varying(255),
    street character varying(255),
    building character varying(255),
    floor character varying(255),
    postal_code integer,
    location_url character varying(255) DEFAULT NULL::character varying,
    country integer DEFAULT 1061,
    place integer,
    coordinates character varying(255),
    attention_channel_id integer,
    place_id integer
);


--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: attention_channels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attention_channels (
    id integer NOT NULL,
    service_id integer,
    service_help_info_id integer,
    others text,
    types text
);


--
-- Name: attention_channels_branch_offices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attention_channels_branch_offices (
    id integer NOT NULL,
    attention_channels_id integer,
    branch_offices_id integer
);


--
-- Name: attention_channels_branch_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.attention_channels_branch_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attention_channels_branch_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.attention_channels_branch_offices_id_seq OWNED BY public.attention_channels_branch_offices.id;


--
-- Name: attention_channels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.attention_channels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attention_channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.attention_channels_id_seq OWNED BY public.attention_channels.id;


--
-- Name: attention_channels_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attention_channels_places (
    id integer NOT NULL,
    attention_channels_id integer,
    places_id integer
);


--
-- Name: attention_channels_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.attention_channels_places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attention_channels_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.attention_channels_places_id_seq OWNED BY public.attention_channels_places.id;


--
-- Name: branch_offices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branch_offices (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    address_id integer,
    place_id integer,
    attention_channel_id integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone
);


--
-- Name: branch_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branch_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branch_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branch_offices_id_seq OWNED BY public.branch_offices.id;


--
-- Name: citizen_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.citizen_types (
    id integer NOT NULL,
    type character varying(255),
    addressed_to_id integer
);


--
-- Name: citizen_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.citizen_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: citizen_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.citizen_types_id_seq OWNED BY public.citizen_types.id;


--
-- Name: communications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.communications (
    id integer NOT NULL,
    title character varying(255),
    message text,
    user_created uuid,
    date_created timestamp with time zone
);


--
-- Name: communications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.communications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: communications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.communications_id_seq OWNED BY public.communications.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    sort integer,
    name character varying(255),
    code character varying(255)
);


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: delivery_time; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.delivery_time (
    id integer NOT NULL,
    date_quantity_min integer,
    date_quantity_max integer,
    delivery_time_type_id integer,
    time_unit_id integer,
    service_variation_delivery_time_id integer,
    attention_channels text,
    date_quantity integer,
    description text
);


--
-- Name: delivery_time_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.delivery_time_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delivery_time_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.delivery_time_id_seq OWNED BY public.delivery_time.id;


--
-- Name: delivery_time_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.delivery_time_type (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: delivery_time_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.delivery_time_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delivery_time_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.delivery_time_type_id_seq OWNED BY public.delivery_time_type.id;


--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    institution integer,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json
);


--
-- Name: documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    description text,
    service_document_id integer,
    service_variation_document_id integer,
    user_created uuid,
    user_updated uuid,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    place_id integer
);


--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: economic_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.economic_activity (
    id integer NOT NULL,
    category character varying(255),
    activity character varying(255),
    addressedto_legal_person_id integer,
    addressedto_natural_person_id integer
);


--
-- Name: economic_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.economic_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: economic_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.economic_activity_id_seq OWNED BY public.economic_activity.id;


--
-- Name: emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emails (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    attention_channel_id integer,
    help_channel_id integer,
    place_id integer
);


--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: help_channel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.help_channel (
    id integer NOT NULL
);


--
-- Name: help_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.help_channel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: help_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.help_channel_id_seq OWNED BY public.help_channel.id;


--
-- Name: industries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.industries (
    id integer NOT NULL,
    name character varying(255),
    place_id integer,
    addressed_to_id integer
);


--
-- Name: industries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.industries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: industries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.industries_id_seq OWNED BY public.industries.id;

--
-- Name: legal_framework; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.legal_framework (
    id integer NOT NULL,
    description character varying(255) DEFAULT NULL::character varying,
    date_issue date,
    number character varying(255),
    service_id integer,
    legal_framework_type_id integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    place_id integer
);


--
-- Name: legal_framework_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.legal_framework_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: legal_framework_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.legal_framework_id_seq OWNED BY public.legal_framework.id;


--
-- Name: legal_framework_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.legal_framework_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: legal_framework_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.legal_framework_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: legal_framework_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.legal_framework_types_id_seq OWNED BY public.legal_framework_types.id;


--
-- Name: legal_person_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.legal_person_types (
    id integer NOT NULL,
    type character varying(255),
    addressed_to_id integer
);


--
-- Name: legal_person_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.legal_person_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: legal_person_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.legal_person_types_id_seq OWNED BY public.legal_person_types.id;


--
-- Name: mobile_app; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobile_app (
    id integer NOT NULL,
    url character varying(255),
    attention_channel_id integer,
    type_id integer
);


--
-- Name: mobile_app_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mobile_app_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mobile_app_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mobile_app_id_seq OWNED BY public.mobile_app.id;


--
-- Name: mobile_app_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobile_app_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: mobile_app_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mobile_app_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mobile_app_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mobile_app_types_id_seq OWNED BY public.mobile_app_types.id;


--
-- Name: moment_life; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.moment_life (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    description character varying(255),
    type character varying(255),
    people_addressed_to_id integer,
    natural_people_addressed_to_id integer,
    legal_person_addressed_to_id integer
);


--
-- Name: moment_life_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.moment_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: moment_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.moment_life_id_seq OWNED BY public.moment_life.id;


--
-- Name: offices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offices (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    email character varying(255),
    phone character varying(255),
    mobile_phone character varying(255),
    name character varying(255) DEFAULT NULL::character varying,
    place_id integer
);


--
-- Name: offices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.offices_id_seq OWNED BY public.offices.id;


--
-- Name: offices_public_info_access; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offices_public_info_access (
    id integer NOT NULL,
    email character varying(255) DEFAULT NULL::character varying,
    phone character varying(255) DEFAULT NULL::character varying,
    mobile_phone character varying(255) DEFAULT NULL::character varying
);


--
-- Name: offices_public_info_access_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.offices_public_info_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: offices_public_info_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.offices_public_info_access_id_seq OWNED BY public.offices_public_info_access.id;


--
-- Name: other_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.other_documents (
    id integer NOT NULL,
    description character varying(255),
    service_other_document_id integer,
    service_variation_other_document_id integer
);


--
-- Name: other_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.other_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: other_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.other_documents_id_seq OWNED BY public.other_documents.id;


--
-- Name: other_requirements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.other_requirements (
    id integer NOT NULL,
    description character varying(255),
    service_variation_other_requirement_id integer,
    service_other_requirement_id integer
);


--
-- Name: other_requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.other_requirements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: other_requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.other_requirements_id_seq OWNED BY public.other_requirements.id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment (
    id integer NOT NULL,
    concept character varying(255),
    description text,
    service_payment_id integer,
    service_variation_payment_id integer,
    is_required boolean,
    price_reference character varying(255),
    payment_type_id integer,
    price numeric(10,2),
    price_min numeric(10,2),
    price_max numeric(10,2),
    currency_type character varying(255) DEFAULT 'RD$'::character varying
);


--
-- Name: payment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_id_seq OWNED BY public.payment.id;


--
-- Name: payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_methods (
    id integer NOT NULL,
    method character varying(255),
    payment_id integer,
    service_id integer,
    service_variation_id integer
);


--
-- Name: payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_methods_id_seq OWNED BY public.payment_methods.id;


--
-- Name: payment_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_places (
    id integer NOT NULL,
    service_variation_id integer,
    payment_places text
);


--
-- Name: payment_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_places_id_seq OWNED BY public.payment_places.id;


--
-- Name: payment_places_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_places_places (
    id integer NOT NULL,
    payment_places_id integer,
    places_id integer
);


--
-- Name: payment_places_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_places_places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_places_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_places_places_id_seq OWNED BY public.payment_places_places.id;


--
-- Name: payment_recipient_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_recipient_info (
    id integer NOT NULL,
    payment_method_id integer DEFAULT 2 NOT NULL,
    recipient_name character varying(255) DEFAULT NULL::character varying NOT NULL,
    document_type character varying(255),
    document_number character varying(255),
    account_type character varying(255),
    account_number character varying(255),
    bank_id integer NOT NULL,
    comments text,
    service_variation_payment_recipient_id integer
);


--
-- Name: payment_recipient_info_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_recipient_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_recipient_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_recipient_info_id_seq OWNED BY public.payment_recipient_info.id;


--
-- Name: payment_recipient_info_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_recipient_info_places (
    id integer NOT NULL,
    payment_recipient_info_id integer,
    places_id integer
);


--
-- Name: payment_recipient_info_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_recipient_info_places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_recipient_info_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_recipient_info_places_id_seq OWNED BY public.payment_recipient_info_places.id;


--
-- Name: payment_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_types_id_seq OWNED BY public.payment_types.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people (
    id integer NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255),
    last_name character varying(255),
    email character varying(255),
    phone character varying(255),
    change_request_id integer
);


--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: people_thematic_axis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_thematic_axis (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    description character varying(255),
    addressed_to_id integer
);


--
-- Name: people_thematic_axis_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.people_thematic_axis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: people_thematic_axis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.people_thematic_axis_id_seq OWNED BY public.people_thematic_axis.id;


--
-- Name: phone_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.phone_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: phone_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.phone_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phone_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.phone_types_id_seq OWNED BY public.phone_types.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.phones (
    id integer NOT NULL,
    attention_channel_id integer,
    number bigint,
    extension integer,
    name character varying(255),
    help_channel_id integer,
    type_id integer,
    place_id integer,
    branch_office_id integer
);


--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.phones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.phones_id_seq OWNED BY public.phones.id;


--
-- Name: place_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.place_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: place_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.place_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: place_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.place_types_id_seq OWNED BY public.place_types.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.places (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    acronym character varying(255) DEFAULT NULL::character varying,
    website character varying(255) DEFAULT NULL::character varying,
    description text,
    attenttion_channel_id integer,
    status_id integer,
    office_public_info_access_id integer,
    payment_place_id integer,
    coedom_id integer,
    address character varying(255),
    place_type_id integer,
    user_institution_wallet_id uuid
);


--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;

--
-- Name: requirements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.requirements (
    id integer NOT NULL,
    description text,
    service_requeriment_id integer,
    service_variation_requeriment_id integer,
    user_created uuid,
    user_updated uuid,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    place_id integer
);


--
-- Name: requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.requirements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.requirements_id_seq OWNED BY public.requirements.id;

--
-- Name: schedule_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schedule_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: schedule_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.schedule_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedule_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.schedule_types_id_seq OWNED BY public.schedule_types.id;


--
-- Name: schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schedules (
    id integer NOT NULL,
    "from" time without time zone,
    until time without time zone,
    attention_channel_id integer,
    place_id integer,
    address_schedule_id integer,
    schedule_type_id integer,
    branch_office_id integer
);


--
-- Name: schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;


--
-- Name: sector_organization; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sector_organization (
    id integer NOT NULL,
    sector character varying(255),
    addressed_to_fk integer
);


--
-- Name: sector_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sector_organization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sector_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sector_organization_id_seq OWNED BY public.sector_organization.id;


--
-- Name: service_classifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_classifications (
    id integer NOT NULL,
    name character varying(255)
);


--
-- Name: service_classifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_classifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_classifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_classifications_id_seq OWNED BY public.service_classifications.id;


--
-- Name: service_names; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_names (
    id integer NOT NULL,
    name character varying(255),
    service_id integer
);


--
-- Name: service_names_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_names_id_seq OWNED BY public.service_names.id;


--
-- Name: service_result_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_result_types (
    id integer NOT NULL,
    name character varying(255)
);


--
-- Name: service_result_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_result_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_result_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_result_types_id_seq OWNED BY public.service_result_types.id;


--
-- Name: service_result_validity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_result_validity (
    id integer NOT NULL,
    uses integer,
    observations text,
    quantity integer,
    date_from integer,
    date_to integer,
    validity_type_id integer DEFAULT 1,
    service_result_id integer,
    time_unit_id integer
);


--
-- Name: service_result_validity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_result_validity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_result_validity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_result_validity_id_seq OWNED BY public.service_result_validity.id;


--
-- Name: service_result_validity_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_result_validity_types (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: service_result_validity_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_result_validity_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_result_validity_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_result_validity_types_id_seq OWNED BY public.service_result_validity_types.id;


--
-- Name: service_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_results (
    id integer NOT NULL,
    name character varying(255),
    service_result_id integer,
    service_variation_result_id integer,
    service_result_type integer
);


--
-- Name: service_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_results_id_seq OWNED BY public.service_results.id;


--
-- Name: service_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_type (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: service_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_type_id_seq OWNED BY public.service_type.id;


--
-- Name: service_variations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_variations (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255),
    description text,
    breakdown_costs text,
    procedure text,
    service_id integer,
    addressed_to_id integer,
    default_variation boolean DEFAULT false
);


--
-- Name: service_variations_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_variations_documents (
    id integer NOT NULL,
    service_variations_id integer,
    documents_id integer
);


--
-- Name: service_variations_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_variations_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_variations_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_variations_documents_id_seq OWNED BY public.service_variations_documents.id;


--
-- Name: service_variations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_variations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_variations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_variations_id_seq OWNED BY public.service_variations.id;


--
-- Name: service_variations_payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_variations_payment_methods (
    id integer NOT NULL,
    service_variations_id integer,
    payment_methods_id integer
);


--
-- Name: service_variations_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_variations_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_variations_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_variations_payment_methods_id_seq OWNED BY public.service_variations_payment_methods.id;


--
-- Name: service_variations_requirements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_variations_requirements (
    id integer NOT NULL,
    service_variations_id integer,
    requirements_id integer
);


--
-- Name: service_variations_requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_variations_requirements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_variations_requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_variations_requirements_id_seq OWNED BY public.service_variations_requirements.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255),
    description text,
    objective text,
    status_id integer DEFAULT 2,
    service_type_id integer DEFAULT 1,
    institution_id integer,
    is_public boolean DEFAULT true,
    legal_framework_comments text,
    service_classification integer,
    attention_channel_id integer,
    help_channel_id integer,
    parent_chained_service_id integer
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: services_legal_framework; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services_legal_framework (
    id integer NOT NULL,
    services_id integer,
    legal_framework_id integer
);


--
-- Name: services_legal_framework_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_legal_framework_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_legal_framework_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_legal_framework_id_seq OWNED BY public.services_legal_framework.id;


--
-- Name: services_offices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services_offices (
    id integer NOT NULL,
    services_id integer,
    offices_id integer
);


--
-- Name: services_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_offices_id_seq OWNED BY public.services_offices.id;


--
-- Name: status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.status (
    id integer NOT NULL,
    name character varying(255)
);


--
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;


--
-- Name: time_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.time_units (
    id integer NOT NULL,
    unit character varying(255)
);


--
-- Name: time_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.time_units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: time_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.time_units_id_seq OWNED BY public.time_units.id;


--
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    name character varying(255),
    url character varying(255),
    service_hepl_url_id integer,
    service_url_id integer,
    service_variation_url_id integer,
    attention_channel_official_communication_id integer,
    attention_channel_digital_id integer,
    help_channel_id integer,
    payment_place_link_id integer
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: address_schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address_schedules ALTER COLUMN id SET DEFAULT nextval('public.address_schedules_id_seq'::regclass);


--
-- Name: addressed_to id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_id_seq'::regclass);


--
-- Name: addressed_to_citizen_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_citizen_types ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_citizen_types_id_seq'::regclass);


--
-- Name: addressed_to_economic_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_economic_activity_id_seq'::regclass);


--
-- Name: addressed_to_economic_activity_1 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity_1 ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_economic_activity_1_id_seq'::regclass);


--
-- Name: addressed_to_industries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_industries ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_industries_id_seq'::regclass);


--
-- Name: addressed_to_legal_person_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_legal_person_types ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_legal_person_types_id_seq'::regclass);


--
-- Name: addressed_to_moment_life id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_moment_life_id_seq'::regclass);


--
-- Name: addressed_to_moment_life_1 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_1 ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_moment_life_1_id_seq'::regclass);


--
-- Name: addressed_to_moment_life_2 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_2 ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_moment_life_2_id_seq'::regclass);


--
-- Name: addressed_to_people_thematic_axis id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_people_thematic_axis ALTER COLUMN id SET DEFAULT nextval('public.addressed_to_people_thematic_axis_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: attention_channels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels ALTER COLUMN id SET DEFAULT nextval('public.attention_channels_id_seq'::regclass);


--
-- Name: attention_channels_branch_offices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_branch_offices ALTER COLUMN id SET DEFAULT nextval('public.attention_channels_branch_offices_id_seq'::regclass);


--
-- Name: attention_channels_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_places ALTER COLUMN id SET DEFAULT nextval('public.attention_channels_places_id_seq'::regclass);


--
-- Name: branch_offices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices ALTER COLUMN id SET DEFAULT nextval('public.branch_offices_id_seq'::regclass);


--
-- Name: citizen_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.citizen_types ALTER COLUMN id SET DEFAULT nextval('public.citizen_types_id_seq'::regclass);


--
-- Name: communications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.communications ALTER COLUMN id SET DEFAULT nextval('public.communications_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: delivery_time id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time ALTER COLUMN id SET DEFAULT nextval('public.delivery_time_id_seq'::regclass);


--
-- Name: delivery_time_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time_type ALTER COLUMN id SET DEFAULT nextval('public.delivery_time_type_id_seq'::regclass);

--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: economic_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.economic_activity ALTER COLUMN id SET DEFAULT nextval('public.economic_activity_id_seq'::regclass);


--
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: help_channel id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.help_channel ALTER COLUMN id SET DEFAULT nextval('public.help_channel_id_seq'::regclass);


--
-- Name: industries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.industries ALTER COLUMN id SET DEFAULT nextval('public.industries_id_seq'::regclass);


--
-- Name: legal_framework id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework ALTER COLUMN id SET DEFAULT nextval('public.legal_framework_id_seq'::regclass);


--
-- Name: legal_framework_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework_types ALTER COLUMN id SET DEFAULT nextval('public.legal_framework_types_id_seq'::regclass);


--
-- Name: legal_person_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_person_types ALTER COLUMN id SET DEFAULT nextval('public.legal_person_types_id_seq'::regclass);


--
-- Name: mobile_app id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app ALTER COLUMN id SET DEFAULT nextval('public.mobile_app_id_seq'::regclass);


--
-- Name: mobile_app_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app_types ALTER COLUMN id SET DEFAULT nextval('public.mobile_app_types_id_seq'::regclass);


--
-- Name: moment_life id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life ALTER COLUMN id SET DEFAULT nextval('public.moment_life_id_seq'::regclass);


--
-- Name: offices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices ALTER COLUMN id SET DEFAULT nextval('public.offices_id_seq'::regclass);


--
-- Name: offices_public_info_access id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices_public_info_access ALTER COLUMN id SET DEFAULT nextval('public.offices_public_info_access_id_seq'::regclass);


--
-- Name: other_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_documents ALTER COLUMN id SET DEFAULT nextval('public.other_documents_id_seq'::regclass);


--
-- Name: other_requirements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_requirements ALTER COLUMN id SET DEFAULT nextval('public.other_requirements_id_seq'::regclass);


--
-- Name: payment id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment ALTER COLUMN id SET DEFAULT nextval('public.payment_id_seq'::regclass);


--
-- Name: payment_methods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods ALTER COLUMN id SET DEFAULT nextval('public.payment_methods_id_seq'::regclass);


--
-- Name: payment_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places ALTER COLUMN id SET DEFAULT nextval('public.payment_places_id_seq'::regclass);


--
-- Name: payment_places_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places_places ALTER COLUMN id SET DEFAULT nextval('public.payment_places_places_id_seq'::regclass);


--
-- Name: payment_recipient_info id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info ALTER COLUMN id SET DEFAULT nextval('public.payment_recipient_info_id_seq'::regclass);


--
-- Name: payment_recipient_info_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info_places ALTER COLUMN id SET DEFAULT nextval('public.payment_recipient_info_places_id_seq'::regclass);


--
-- Name: payment_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_types ALTER COLUMN id SET DEFAULT nextval('public.payment_types_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: people_thematic_axis id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_thematic_axis ALTER COLUMN id SET DEFAULT nextval('public.people_thematic_axis_id_seq'::regclass);


--
-- Name: phone_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phone_types ALTER COLUMN id SET DEFAULT nextval('public.phone_types_id_seq'::regclass);


--
-- Name: phones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones ALTER COLUMN id SET DEFAULT nextval('public.phones_id_seq'::regclass);


--
-- Name: place_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.place_types ALTER COLUMN id SET DEFAULT nextval('public.place_types_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);

--
-- Name: requirements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements ALTER COLUMN id SET DEFAULT nextval('public.requirements_id_seq'::regclass);


--
-- Name: schedule_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedule_types ALTER COLUMN id SET DEFAULT nextval('public.schedule_types_id_seq'::regclass);


--
-- Name: schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);


--
-- Name: sector_organization id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sector_organization ALTER COLUMN id SET DEFAULT nextval('public.sector_organization_id_seq'::regclass);


--
-- Name: service_classifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_classifications ALTER COLUMN id SET DEFAULT nextval('public.service_classifications_id_seq'::regclass);


--
-- Name: service_names id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_names ALTER COLUMN id SET DEFAULT nextval('public.service_names_id_seq'::regclass);


--
-- Name: service_result_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_types ALTER COLUMN id SET DEFAULT nextval('public.service_result_types_id_seq'::regclass);


--
-- Name: service_result_validity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity ALTER COLUMN id SET DEFAULT nextval('public.service_result_validity_id_seq'::regclass);


--
-- Name: service_result_validity_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity_types ALTER COLUMN id SET DEFAULT nextval('public.service_result_validity_types_id_seq'::regclass);


--
-- Name: service_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_results ALTER COLUMN id SET DEFAULT nextval('public.service_results_id_seq'::regclass);


--
-- Name: service_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_type ALTER COLUMN id SET DEFAULT nextval('public.service_type_id_seq'::regclass);


--
-- Name: service_variations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations ALTER COLUMN id SET DEFAULT nextval('public.service_variations_id_seq'::regclass);


--
-- Name: service_variations_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_documents ALTER COLUMN id SET DEFAULT nextval('public.service_variations_documents_id_seq'::regclass);


--
-- Name: service_variations_payment_methods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.service_variations_payment_methods_id_seq'::regclass);


--
-- Name: service_variations_requirements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_requirements ALTER COLUMN id SET DEFAULT nextval('public.service_variations_requirements_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: services_legal_framework id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_legal_framework ALTER COLUMN id SET DEFAULT nextval('public.services_legal_framework_id_seq'::regclass);


--
-- Name: services_offices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_offices ALTER COLUMN id SET DEFAULT nextval('public.services_offices_id_seq'::regclass);


--
-- Name: status id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);


--
-- Name: time_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.time_units ALTER COLUMN id SET DEFAULT nextval('public.time_units_id_seq'::regclass);


--
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: address_schedules address_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address_schedules
    ADD CONSTRAINT address_schedules_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_citizen_types addressed_to_citizen_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_citizen_types
    ADD CONSTRAINT addressed_to_citizen_types_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_economic_activity_1 addressed_to_economic_activity_1_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity_1
    ADD CONSTRAINT addressed_to_economic_activity_1_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_economic_activity addressed_to_economic_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity
    ADD CONSTRAINT addressed_to_economic_activity_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_industries addressed_to_industries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_industries
    ADD CONSTRAINT addressed_to_industries_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_legal_person_types addressed_to_legal_person_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_legal_person_types
    ADD CONSTRAINT addressed_to_legal_person_types_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_moment_life_1 addressed_to_moment_life_1_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_1
    ADD CONSTRAINT addressed_to_moment_life_1_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_moment_life_2 addressed_to_moment_life_2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_2
    ADD CONSTRAINT addressed_to_moment_life_2_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_moment_life addressed_to_moment_life_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life
    ADD CONSTRAINT addressed_to_moment_life_pkey PRIMARY KEY (id);


--
-- Name: addressed_to_people_thematic_axis addressed_to_people_thematic_axis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_people_thematic_axis
    ADD CONSTRAINT addressed_to_people_thematic_axis_pkey PRIMARY KEY (id);


--
-- Name: addressed_to addressed_to_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to
    ADD CONSTRAINT addressed_to_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: attention_channels_branch_offices attention_channels_branch_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_branch_offices
    ADD CONSTRAINT attention_channels_branch_offices_pkey PRIMARY KEY (id);


--
-- Name: attention_channels attention_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels
    ADD CONSTRAINT attention_channels_pkey PRIMARY KEY (id);


--
-- Name: attention_channels_places attention_channels_places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_places
    ADD CONSTRAINT attention_channels_places_pkey PRIMARY KEY (id);


--
-- Name: branch_offices branch_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_pkey PRIMARY KEY (id);


--
-- Name: citizen_types citizen_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.citizen_types
    ADD CONSTRAINT citizen_types_pkey PRIMARY KEY (id);


--
-- Name: communications communications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.communications
    ADD CONSTRAINT communications_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: delivery_time delivery_time_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time
    ADD CONSTRAINT delivery_time_pkey PRIMARY KEY (id);


--
-- Name: delivery_time_type delivery_time_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time_type
    ADD CONSTRAINT delivery_time_type_pkey PRIMARY KEY (id);



--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);

--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: economic_activity economic_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.economic_activity
    ADD CONSTRAINT economic_activity_pkey PRIMARY KEY (id);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: help_channel help_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.help_channel
    ADD CONSTRAINT help_channel_pkey PRIMARY KEY (id);


--
-- Name: industries industries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.industries
    ADD CONSTRAINT industries_pkey PRIMARY KEY (id);

--
-- Name: legal_framework legal_framework_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_pkey PRIMARY KEY (id);


--
-- Name: legal_framework_types legal_framework_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework_types
    ADD CONSTRAINT legal_framework_types_pkey PRIMARY KEY (id);


--
-- Name: legal_person_types legal_person_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_person_types
    ADD CONSTRAINT legal_person_types_pkey PRIMARY KEY (id);


--
-- Name: mobile_app mobile_app_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app
    ADD CONSTRAINT mobile_app_pkey PRIMARY KEY (id);


--
-- Name: mobile_app_types mobile_app_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app_types
    ADD CONSTRAINT mobile_app_types_pkey PRIMARY KEY (id);


--
-- Name: moment_life moment_life_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_pkey PRIMARY KEY (id);


--
-- Name: offices offices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_pkey PRIMARY KEY (id);


--
-- Name: offices_public_info_access offices_public_info_access_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices_public_info_access
    ADD CONSTRAINT offices_public_info_access_pkey PRIMARY KEY (id);


--
-- Name: other_documents other_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_documents
    ADD CONSTRAINT other_documents_pkey PRIMARY KEY (id);


--
-- Name: other_requirements other_requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_requirements
    ADD CONSTRAINT other_requirements_pkey PRIMARY KEY (id);


--
-- Name: payment_methods payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: payment_places payment_places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places
    ADD CONSTRAINT payment_places_pkey PRIMARY KEY (id);


--
-- Name: payment_places_places payment_places_places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places_places
    ADD CONSTRAINT payment_places_places_pkey PRIMARY KEY (id);


--
-- Name: payment_recipient_info payment_recipient_info_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info
    ADD CONSTRAINT payment_recipient_info_pkey PRIMARY KEY (id);


--
-- Name: payment_recipient_info_places payment_recipient_info_places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info_places
    ADD CONSTRAINT payment_recipient_info_places_pkey PRIMARY KEY (id);


--
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: people_thematic_axis people_thematic_axis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_thematic_axis
    ADD CONSTRAINT people_thematic_axis_pkey PRIMARY KEY (id);


--
-- Name: phone_types phone_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phone_types
    ADD CONSTRAINT phone_types_pkey PRIMARY KEY (id);


--
-- Name: phones phones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: place_types place_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.place_types
    ADD CONSTRAINT place_types_pkey PRIMARY KEY (id);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);

--
-- Name: requirements requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_pkey PRIMARY KEY (id);

--
-- Name: schedule_types schedule_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedule_types
    ADD CONSTRAINT schedule_types_pkey PRIMARY KEY (id);


--
-- Name: schedules schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);


--
-- Name: sector_organization sector_organization_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sector_organization
    ADD CONSTRAINT sector_organization_pkey PRIMARY KEY (id);


--
-- Name: service_classifications service_classifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_classifications
    ADD CONSTRAINT service_classifications_pkey PRIMARY KEY (id);


--
-- Name: service_names service_names_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_names
    ADD CONSTRAINT service_names_pkey PRIMARY KEY (id);


--
-- Name: service_result_types service_result_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_types
    ADD CONSTRAINT service_result_types_pkey PRIMARY KEY (id);


--
-- Name: service_result_validity service_result_validity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity
    ADD CONSTRAINT service_result_validity_pkey PRIMARY KEY (id);


--
-- Name: service_result_validity_types service_result_validity_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity_types
    ADD CONSTRAINT service_result_validity_types_pkey PRIMARY KEY (id);


--
-- Name: service_results service_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_results
    ADD CONSTRAINT service_results_pkey PRIMARY KEY (id);


--
-- Name: service_type service_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_type
    ADD CONSTRAINT service_type_pkey PRIMARY KEY (id);


--
-- Name: service_variations_documents service_variations_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_documents
    ADD CONSTRAINT service_variations_documents_pkey PRIMARY KEY (id);


--
-- Name: service_variations_payment_methods service_variations_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_payment_methods
    ADD CONSTRAINT service_variations_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: service_variations service_variations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations
    ADD CONSTRAINT service_variations_pkey PRIMARY KEY (id);


--
-- Name: service_variations_requirements service_variations_requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_requirements
    ADD CONSTRAINT service_variations_requirements_pkey PRIMARY KEY (id);


--
-- Name: services_legal_framework services_legal_framework_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_legal_framework
    ADD CONSTRAINT services_legal_framework_pkey PRIMARY KEY (id);


--
-- Name: services_offices services_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_offices
    ADD CONSTRAINT services_offices_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);


--
-- Name: time_units time_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.time_units
    ADD CONSTRAINT time_units_pkey PRIMARY KEY (id);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: address_schedules address_schedules_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address_schedules
    ADD CONSTRAINT address_schedules_address_id_foreign FOREIGN KEY (address_id) REFERENCES public.addresses(id) ON DELETE SET NULL;


--
-- Name: address_schedules address_schedules_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address_schedules
    ADD CONSTRAINT address_schedules_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: addressed_to_citizen_types addressed_to_citizen_types_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_citizen_types
    ADD CONSTRAINT addressed_to_citizen_types_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_citizen_types addressed_to_citizen_types_citizen_types_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_citizen_types
    ADD CONSTRAINT addressed_to_citizen_types_citizen_types_id_foreign FOREIGN KEY (citizen_types_id) REFERENCES public.citizen_types(id) ON DELETE SET NULL;


--
-- Name: addressed_to_economic_activity_1 addressed_to_economic_activity_1_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity_1
    ADD CONSTRAINT addressed_to_economic_activity_1_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_economic_activity_1 addressed_to_economic_activity_1_economic___76319d9e_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity_1
    ADD CONSTRAINT addressed_to_economic_activity_1_economic___76319d9e_foreign FOREIGN KEY (economic_activity_id) REFERENCES public.economic_activity(id) ON DELETE SET NULL;


--
-- Name: addressed_to_economic_activity addressed_to_economic_activity_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity
    ADD CONSTRAINT addressed_to_economic_activity_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_economic_activity addressed_to_economic_activity_economic_activity_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_economic_activity
    ADD CONSTRAINT addressed_to_economic_activity_economic_activity_id_foreign FOREIGN KEY (economic_activity_id) REFERENCES public.economic_activity(id) ON DELETE SET NULL;


--
-- Name: addressed_to_industries addressed_to_industries_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_industries
    ADD CONSTRAINT addressed_to_industries_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_industries addressed_to_industries_industries_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_industries
    ADD CONSTRAINT addressed_to_industries_industries_id_foreign FOREIGN KEY (industries_id) REFERENCES public.industries(id) ON DELETE SET NULL;


--
-- Name: addressed_to_legal_person_types addressed_to_legal_person_types_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_legal_person_types
    ADD CONSTRAINT addressed_to_legal_person_types_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_legal_person_types addressed_to_legal_person_types_legal_pers__41073ff8_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_legal_person_types
    ADD CONSTRAINT addressed_to_legal_person_types_legal_pers__41073ff8_foreign FOREIGN KEY (legal_person_types_id) REFERENCES public.legal_person_types(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life_1 addressed_to_moment_life_1_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_1
    ADD CONSTRAINT addressed_to_moment_life_1_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life_1 addressed_to_moment_life_1_moment_life_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_1
    ADD CONSTRAINT addressed_to_moment_life_1_moment_life_id_foreign FOREIGN KEY (moment_life_id) REFERENCES public.moment_life(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life_2 addressed_to_moment_life_2_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_2
    ADD CONSTRAINT addressed_to_moment_life_2_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life_2 addressed_to_moment_life_2_moment_life_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life_2
    ADD CONSTRAINT addressed_to_moment_life_2_moment_life_id_foreign FOREIGN KEY (moment_life_id) REFERENCES public.moment_life(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life addressed_to_moment_life_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life
    ADD CONSTRAINT addressed_to_moment_life_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_moment_life addressed_to_moment_life_moment_life_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_moment_life
    ADD CONSTRAINT addressed_to_moment_life_moment_life_id_foreign FOREIGN KEY (moment_life_id) REFERENCES public.moment_life(id) ON DELETE SET NULL;


--
-- Name: addressed_to_people_thematic_axis addressed_to_people_thematic_axis_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_people_thematic_axis
    ADD CONSTRAINT addressed_to_people_thematic_axis_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: addressed_to_people_thematic_axis addressed_to_people_thematic_axis_people_th__6701348_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addressed_to_people_thematic_axis
    ADD CONSTRAINT addressed_to_people_thematic_axis_people_th__6701348_foreign FOREIGN KEY (people_thematic_axis_id) REFERENCES public.people_thematic_axis(id) ON DELETE SET NULL;


--
-- Name: addresses addresses_country_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_country_foreign FOREIGN KEY (country) REFERENCES public.countries(id) ON DELETE SET NULL;


--
-- Name: addresses addresses_place_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_place_foreign FOREIGN KEY (place) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: addresses addresses_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: addresses addresses_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: addresses addresses_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: attention_channels_branch_offices attention_channels_branch_offices_attentio__5d219159_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_branch_offices
    ADD CONSTRAINT attention_channels_branch_offices_attentio__5d219159_foreign FOREIGN KEY (attention_channels_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: attention_channels_branch_offices attention_channels_branch_offices_branch_offices_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_branch_offices
    ADD CONSTRAINT attention_channels_branch_offices_branch_offices_id_foreign FOREIGN KEY (branch_offices_id) REFERENCES public.branch_offices(id) ON DELETE SET NULL;


--
-- Name: attention_channels_places attention_channels_places_attention_channels_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_places
    ADD CONSTRAINT attention_channels_places_attention_channels_id_foreign FOREIGN KEY (attention_channels_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: attention_channels_places attention_channels_places_places_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels_places
    ADD CONSTRAINT attention_channels_places_places_id_foreign FOREIGN KEY (places_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: attention_channels attention_channels_service_help_info_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels
    ADD CONSTRAINT attention_channels_service_help_info_id_foreign FOREIGN KEY (service_help_info_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: attention_channels attention_channels_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attention_channels
    ADD CONSTRAINT attention_channels_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: branch_offices branch_offices_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_address_id_foreign FOREIGN KEY (address_id) REFERENCES public.addresses(id) ON DELETE SET NULL;


--
-- Name: branch_offices branch_offices_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: branch_offices branch_offices_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: branch_offices branch_offices_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: branch_offices branch_offices_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_offices
    ADD CONSTRAINT branch_offices_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


ALTER TABLE ONLY public.citizen_types
    ADD CONSTRAINT citizen_types_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: communications communications_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.communications
    ADD CONSTRAINT communications_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: delivery_time delivery_time_delivery_time_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time
    ADD CONSTRAINT delivery_time_delivery_time_type_id_foreign FOREIGN KEY (delivery_time_type_id) REFERENCES public.delivery_time_type(id) ON DELETE SET NULL;


--
-- Name: delivery_time delivery_time_service_variation_delivery_time_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time
    ADD CONSTRAINT delivery_time_service_variation_delivery_time_id_foreign FOREIGN KEY (service_variation_delivery_time_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: delivery_time delivery_time_time_unit_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delivery_time
    ADD CONSTRAINT delivery_time_time_unit_id_foreign FOREIGN KEY (time_unit_id) REFERENCES public.time_units(id) ON DELETE SET NULL;


ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_institution_foreign FOREIGN KEY (institution) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: documents documents_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: documents documents_service_document_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_service_document_id_foreign FOREIGN KEY (service_document_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: documents documents_service_variation_document_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_service_variation_document_id_foreign FOREIGN KEY (service_variation_document_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: documents documents_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: documents documents_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: economic_activity economic_activity_addressedto_legal_person_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.economic_activity
    ADD CONSTRAINT economic_activity_addressedto_legal_person_id_foreign FOREIGN KEY (addressedto_legal_person_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: economic_activity economic_activity_addressedto_natural_person_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.economic_activity
    ADD CONSTRAINT economic_activity_addressedto_natural_person_id_foreign FOREIGN KEY (addressedto_natural_person_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: emails emails_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: emails emails_help_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_help_channel_id_foreign FOREIGN KEY (help_channel_id) REFERENCES public.help_channel(id) ON DELETE SET NULL;


--
-- Name: emails emails_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: industries industries_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.industries
    ADD CONSTRAINT industries_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: industries industries_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.industries
    ADD CONSTRAINT industries_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: legal_framework legal_framework_legal_framework_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_legal_framework_type_id_foreign FOREIGN KEY (legal_framework_type_id) REFERENCES public.legal_framework_types(id) ON DELETE SET NULL;


--
-- Name: legal_framework legal_framework_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: legal_framework legal_framework_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: legal_framework legal_framework_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: legal_framework legal_framework_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_framework
    ADD CONSTRAINT legal_framework_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: legal_person_types legal_person_types_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.legal_person_types
    ADD CONSTRAINT legal_person_types_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: mobile_app mobile_app_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app
    ADD CONSTRAINT mobile_app_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: mobile_app mobile_app_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_app
    ADD CONSTRAINT mobile_app_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.mobile_app_types(id) ON DELETE SET NULL;


--
-- Name: moment_life moment_life_legal_person_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_legal_person_addressed_to_id_foreign FOREIGN KEY (legal_person_addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: moment_life moment_life_natural_people_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_natural_people_addressed_to_id_foreign FOREIGN KEY (natural_people_addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: moment_life moment_life_people_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_people_addressed_to_id_foreign FOREIGN KEY (people_addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: moment_life moment_life_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: moment_life moment_life_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.moment_life
    ADD CONSTRAINT moment_life_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: offices offices_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: offices offices_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: offices offices_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: other_documents other_documents_service_other_document_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_documents
    ADD CONSTRAINT other_documents_service_other_document_id_foreign FOREIGN KEY (service_other_document_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: other_documents other_documents_service_variation_other_document_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_documents
    ADD CONSTRAINT other_documents_service_variation_other_document_id_foreign FOREIGN KEY (service_variation_other_document_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: other_requirements other_requirements_service_other_requirement_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_requirements
    ADD CONSTRAINT other_requirements_service_other_requirement_id_foreign FOREIGN KEY (service_other_requirement_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: other_requirements other_requirements_service_variation_other__76ffdb91_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.other_requirements
    ADD CONSTRAINT other_requirements_service_variation_other__76ffdb91_foreign FOREIGN KEY (service_variation_other_requirement_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: payment_methods payment_methods_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON DELETE SET NULL;


--
-- Name: payment_methods payment_methods_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: payment_methods payment_methods_service_variation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_service_variation_id_foreign FOREIGN KEY (service_variation_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: payment payment_payment_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_payment_type_id_foreign FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id) ON DELETE SET NULL;


--
-- Name: payment_places_places payment_places_places_payment_places_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places_places
    ADD CONSTRAINT payment_places_places_payment_places_id_foreign FOREIGN KEY (payment_places_id) REFERENCES public.payment_places(id) ON DELETE SET NULL;


--
-- Name: payment_places_places payment_places_places_places_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places_places
    ADD CONSTRAINT payment_places_places_places_id_foreign FOREIGN KEY (places_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: payment_places payment_places_service_variation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_places
    ADD CONSTRAINT payment_places_service_variation_id_foreign FOREIGN KEY (service_variation_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: payment_recipient_info payment_recipient_info_bank_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info
    ADD CONSTRAINT payment_recipient_info_bank_id_foreign FOREIGN KEY (bank_id) REFERENCES public.places(id);


--
-- Name: payment_recipient_info payment_recipient_info_payment_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info
    ADD CONSTRAINT payment_recipient_info_payment_method_id_foreign FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id);


--
-- Name: payment_recipient_info payment_recipient_info_service_variation_p__77a37849_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_recipient_info
    ADD CONSTRAINT payment_recipient_info_service_variation_p__77a37849_foreign FOREIGN KEY (service_variation_payment_recipient_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: payment payment_service_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_service_payment_id_foreign FOREIGN KEY (service_payment_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: payment payment_service_variation_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_service_variation_payment_id_foreign FOREIGN KEY (service_variation_payment_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;

--
-- Name: people_thematic_axis people_thematic_axis_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_thematic_axis
    ADD CONSTRAINT people_thematic_axis_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: people_thematic_axis people_thematic_axis_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_thematic_axis
    ADD CONSTRAINT people_thematic_axis_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: people_thematic_axis people_thematic_axis_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_thematic_axis
    ADD CONSTRAINT people_thematic_axis_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: people people_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: people people_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: phones phones_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: phones phones_branch_office_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_branch_office_id_foreign FOREIGN KEY (branch_office_id) REFERENCES public.branch_offices(id) ON DELETE SET NULL;


--
-- Name: phones phones_help_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_help_channel_id_foreign FOREIGN KEY (help_channel_id) REFERENCES public.help_channel(id) ON DELETE SET NULL;


--
-- Name: phones phones_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: phones phones_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.phone_types(id) ON DELETE SET NULL;


--
-- Name: places places_attenttion_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_attenttion_channel_id_foreign FOREIGN KEY (attenttion_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: places places_office_public_info_access_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_office_public_info_access_id_foreign FOREIGN KEY (office_public_info_access_id) REFERENCES public.offices_public_info_access(id) ON DELETE SET NULL;


--
-- Name: places places_payment_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_payment_place_id_foreign FOREIGN KEY (payment_place_id) REFERENCES public.payment_places(id) ON DELETE SET NULL;


--
-- Name: places places_place_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_place_type_id_foreign FOREIGN KEY (place_type_id) REFERENCES public.place_types(id) ON DELETE SET NULL;


--
-- Name: places places_status_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.status(id) ON DELETE SET NULL;


--
-- Name: places places_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: places places_user_institution_wallet_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_user_institution_wallet_id_foreign FOREIGN KEY (user_institution_wallet_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: places places_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: requirements requirements_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: requirements requirements_service_requeriment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_service_requeriment_id_foreign FOREIGN KEY (service_requeriment_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: requirements requirements_service_variation_requeriment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_service_variation_requeriment_id_foreign FOREIGN KEY (service_variation_requeriment_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: requirements requirements_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: requirements requirements_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: schedules schedules_address_schedule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_address_schedule_id_foreign FOREIGN KEY (address_schedule_id) REFERENCES public.address_schedules(id) ON DELETE SET NULL;


--
-- Name: schedules schedules_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: schedules schedules_branch_office_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_branch_office_id_foreign FOREIGN KEY (branch_office_id) REFERENCES public.branch_offices(id) ON DELETE SET NULL;


--
-- Name: schedules schedules_place_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_place_id_foreign FOREIGN KEY (place_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: schedules schedules_schedule_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_schedule_type_id_foreign FOREIGN KEY (schedule_type_id) REFERENCES public.schedule_types(id) ON DELETE SET NULL;


--
-- Name: sector_organization sector_organization_addressed_to_fk_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sector_organization
    ADD CONSTRAINT sector_organization_addressed_to_fk_foreign FOREIGN KEY (addressed_to_fk) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: service_names service_names_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_names
    ADD CONSTRAINT service_names_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: service_result_validity service_result_validity_service_result_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity
    ADD CONSTRAINT service_result_validity_service_result_id_foreign FOREIGN KEY (service_result_id) REFERENCES public.service_results(id) ON DELETE SET NULL;


--
-- Name: service_result_validity service_result_validity_time_unit_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity
    ADD CONSTRAINT service_result_validity_time_unit_id_foreign FOREIGN KEY (time_unit_id) REFERENCES public.time_units(id) ON DELETE SET NULL;


--
-- Name: service_result_validity service_result_validity_validity_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_result_validity
    ADD CONSTRAINT service_result_validity_validity_type_id_foreign FOREIGN KEY (validity_type_id) REFERENCES public.service_result_validity_types(id) ON DELETE SET NULL;


--
-- Name: service_results service_results_service_result_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_results
    ADD CONSTRAINT service_results_service_result_id_foreign FOREIGN KEY (service_result_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: service_results service_results_service_result_type_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_results
    ADD CONSTRAINT service_results_service_result_type_foreign FOREIGN KEY (service_result_type) REFERENCES public.service_result_types(id) ON DELETE SET NULL;


--
-- Name: service_results service_results_service_variation_result_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_results
    ADD CONSTRAINT service_results_service_variation_result_id_foreign FOREIGN KEY (service_variation_result_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: service_variations service_variations_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations
    ADD CONSTRAINT service_variations_addressed_to_id_foreign FOREIGN KEY (addressed_to_id) REFERENCES public.addressed_to(id) ON DELETE SET NULL;


--
-- Name: service_variations_documents service_variations_documents_documents_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_documents
    ADD CONSTRAINT service_variations_documents_documents_id_foreign FOREIGN KEY (documents_id) REFERENCES public.documents(id) ON DELETE SET NULL;


--
-- Name: service_variations_documents service_variations_documents_service_variations_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_documents
    ADD CONSTRAINT service_variations_documents_service_variations_id_foreign FOREIGN KEY (service_variations_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: service_variations_payment_methods service_variations_payment_methods_payment__68062b91_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_payment_methods
    ADD CONSTRAINT service_variations_payment_methods_payment__68062b91_foreign FOREIGN KEY (payment_methods_id) REFERENCES public.payment_methods(id) ON DELETE SET NULL;


--
-- Name: service_variations_payment_methods service_variations_payment_methods_service__738da64a_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_payment_methods
    ADD CONSTRAINT service_variations_payment_methods_service__738da64a_foreign FOREIGN KEY (service_variations_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: service_variations_requirements service_variations_requirements_requirements_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_requirements
    ADD CONSTRAINT service_variations_requirements_requirements_id_foreign FOREIGN KEY (requirements_id) REFERENCES public.requirements(id) ON DELETE SET NULL;


--
-- Name: service_variations_requirements service_variations_requirements_service_va__6a376c15_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations_requirements
    ADD CONSTRAINT service_variations_requirements_service_va__6a376c15_foreign FOREIGN KEY (service_variations_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- Name: service_variations service_variations_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations
    ADD CONSTRAINT service_variations_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: service_variations service_variations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations
    ADD CONSTRAINT service_variations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: service_variations service_variations_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_variations
    ADD CONSTRAINT service_variations_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: services services_attention_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_attention_channel_id_foreign FOREIGN KEY (attention_channel_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: services services_help_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_help_channel_id_foreign FOREIGN KEY (help_channel_id) REFERENCES public.help_channel(id) ON DELETE SET NULL;


--
-- Name: services services_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: services_legal_framework services_legal_framework_legal_framework_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_legal_framework
    ADD CONSTRAINT services_legal_framework_legal_framework_id_foreign FOREIGN KEY (legal_framework_id) REFERENCES public.legal_framework(id) ON DELETE SET NULL;


--
-- Name: services_legal_framework services_legal_framework_services_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_legal_framework
    ADD CONSTRAINT services_legal_framework_services_id_foreign FOREIGN KEY (services_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: services_offices services_offices_offices_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_offices
    ADD CONSTRAINT services_offices_offices_id_foreign FOREIGN KEY (offices_id) REFERENCES public.offices(id) ON DELETE SET NULL;


--
-- Name: services_offices services_offices_services_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services_offices
    ADD CONSTRAINT services_offices_services_id_foreign FOREIGN KEY (services_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: services services_parent_chained_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_parent_chained_service_id_foreign FOREIGN KEY (parent_chained_service_id) REFERENCES public.services(id);


--
-- Name: services services_service_classification_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_service_classification_foreign FOREIGN KEY (service_classification) REFERENCES public.service_classifications(id) ON DELETE SET NULL;


--
-- Name: services services_service_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_service_type_id_foreign FOREIGN KEY (service_type_id) REFERENCES public.service_type(id) ON DELETE SET NULL;


--
-- Name: services services_status_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.status(id) ON DELETE SET NULL;


--
-- Name: services services_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: services services_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: urls urls_attention_channel_digital_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_attention_channel_digital_id_foreign FOREIGN KEY (attention_channel_digital_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: urls urls_attention_channel_official_communication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_attention_channel_official_communication_id_foreign FOREIGN KEY (attention_channel_official_communication_id) REFERENCES public.attention_channels(id) ON DELETE SET NULL;


--
-- Name: urls urls_help_channel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_help_channel_id_foreign FOREIGN KEY (help_channel_id) REFERENCES public.help_channel(id) ON DELETE SET NULL;


--
-- Name: urls urls_payment_place_link_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_payment_place_link_id_foreign FOREIGN KEY (payment_place_link_id) REFERENCES public.payment_places(id) ON DELETE SET NULL;


--
-- Name: urls urls_service_hepl_url_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_service_hepl_url_id_foreign FOREIGN KEY (service_hepl_url_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: urls urls_service_url_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_service_url_id_foreign FOREIGN KEY (service_url_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: urls urls_service_variation_url_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_service_variation_url_id_foreign FOREIGN KEY (service_variation_url_id) REFERENCES public.service_variations(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

-- unrestrict aUaz4YFScxgmb3mpnB2o6RUDM16CwfUKCVBVYWf3Q2akt7t9LTqyNceaXApSFsm

