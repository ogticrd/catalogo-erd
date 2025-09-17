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
-- Name: change_request_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.change_request_type (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: change_request_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.change_request_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: change_request_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.change_request_type_id_seq OWNED BY public.change_request_type.id;


--
-- Name: change_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.change_requests (
    id integer NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    description text,
    comments text,
    status_id integer DEFAULT 2,
    priority_id integer DEFAULT 1,
    change_request_type_id integer,
    service_id integer
);


--
-- Name: change_requests_files_1; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.change_requests_files_1 (
    id integer NOT NULL,
    change_requests_id integer,
    directus_files_id uuid
);


--
-- Name: change_requests_files_1_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.change_requests_files_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: change_requests_files_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.change_requests_files_1_id_seq OWNED BY public.change_requests_files_1.id;


--
-- Name: change_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.change_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: change_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.change_requests_id_seq OWNED BY public.change_requests.id;


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
-- Name: directus_access; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);


--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    origin character varying(255)
);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(64),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


--
-- Name: directus_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_comments (
    id uuid NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);


--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    flow_manager_category character varying(255) DEFAULT NULL::character varying,
    flow_manager_order integer DEFAULT 0
);


--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(64) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_policies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);


--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(64) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);


--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);


--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    flow_manager_categories json DEFAULT '[]'::json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json
);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


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
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid,
    delta json
);


--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


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
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    code character varying(255) NOT NULL,
    name character varying(255),
    direction character varying(255) DEFAULT 'ltr'::character varying
);


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
-- Name: priority; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.priority (
    id integer NOT NULL,
    priority character varying(255)
);


--
-- Name: priority_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.priority_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: priority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.priority_id_seq OWNED BY public.priority.id;


--
-- Name: request_update_fields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.request_update_fields (
    id integer NOT NULL,
    name character varying(255),
    update text,
    comments text,
    change_request_fk integer,
    change_request_id integer
);


--
-- Name: request_update_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.request_update_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: request_update_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.request_update_fields_id_seq OWNED BY public.request_update_fields.id;


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
-- Name: revision_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.revision_requests (
    id integer NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    status_id integer DEFAULT 2,
    priority_id integer DEFAULT 1,
    change_request_type_id integer,
    service_id integer,
    description text,
    comments text
);


--
-- Name: revision_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.revision_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: revision_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.revision_requests_id_seq OWNED BY public.revision_requests.id;


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
-- Name: change_request_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_request_type ALTER COLUMN id SET DEFAULT nextval('public.change_request_type_id_seq'::regclass);


--
-- Name: change_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests ALTER COLUMN id SET DEFAULT nextval('public.change_requests_id_seq'::regclass);


--
-- Name: change_requests_files_1 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests_files_1 ALTER COLUMN id SET DEFAULT nextval('public.change_requests_files_1_id_seq'::regclass);


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
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


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
-- Name: priority id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.priority ALTER COLUMN id SET DEFAULT nextval('public.priority_id_seq'::regclass);


--
-- Name: request_update_fields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.request_update_fields ALTER COLUMN id SET DEFAULT nextval('public.request_update_fields_id_seq'::regclass);


--
-- Name: requirements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements ALTER COLUMN id SET DEFAULT nextval('public.requirements_id_seq'::regclass);


--
-- Name: revision_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests ALTER COLUMN id SET DEFAULT nextval('public.revision_requests_id_seq'::regclass);


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
-- Name: change_request_type change_request_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_request_type
    ADD CONSTRAINT change_request_type_pkey PRIMARY KEY (id);


--
-- Name: change_requests_files_1 change_requests_files_1_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests_files_1
    ADD CONSTRAINT change_requests_files_1_pkey PRIMARY KEY (id);


--
-- Name: change_requests change_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_pkey PRIMARY KEY (id);


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
-- Name: directus_access directus_access_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_comments directus_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_pkey PRIMARY KEY (id);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_policies directus_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


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
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


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
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (code);


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
-- Name: priority priority_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT priority_pkey PRIMARY KEY (id);


--
-- Name: request_update_fields request_update_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.request_update_fields
    ADD CONSTRAINT request_update_fields_pkey PRIMARY KEY (id);


--
-- Name: requirements requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_pkey PRIMARY KEY (id);


--
-- Name: revision_requests revision_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_pkey PRIMARY KEY (id);


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


--
-- Name: change_requests change_requests_change_request_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_change_request_type_id_foreign FOREIGN KEY (change_request_type_id) REFERENCES public.change_request_type(id) ON DELETE SET NULL;


--
-- Name: change_requests_files_1 change_requests_files_1_change_requests_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests_files_1
    ADD CONSTRAINT change_requests_files_1_change_requests_id_foreign FOREIGN KEY (change_requests_id) REFERENCES public.change_requests(id) ON DELETE SET NULL;


--
-- Name: change_requests_files_1 change_requests_files_1_directus_files_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests_files_1
    ADD CONSTRAINT change_requests_files_1_directus_files_id_foreign FOREIGN KEY (directus_files_id) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: change_requests change_requests_priority_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_priority_id_foreign FOREIGN KEY (priority_id) REFERENCES public.priority(id) ON DELETE SET NULL;


--
-- Name: change_requests change_requests_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: change_requests change_requests_status_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.status(id) ON DELETE SET NULL;


--
-- Name: change_requests change_requests_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: change_requests change_requests_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: citizen_types citizen_types_addressed_to_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

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


--
-- Name: directus_access directus_access_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_comments directus_comments_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_comments directus_comments_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_comments
    ADD CONSTRAINT directus_comments_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_roles directus_roles_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_registration_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_institution_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_institution_foreign FOREIGN KEY (institution) REFERENCES public.places(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_webhooks directus_webhooks_migrated_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;


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
-- Name: people people_change_request_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_change_request_id_foreign FOREIGN KEY (change_request_id) REFERENCES public.change_requests(id) ON DELETE SET NULL;


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
-- Name: request_update_fields request_update_fields_change_request_fk_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.request_update_fields
    ADD CONSTRAINT request_update_fields_change_request_fk_foreign FOREIGN KEY (change_request_fk) REFERENCES public.change_requests(id) ON DELETE SET NULL;


--
-- Name: request_update_fields request_update_fields_change_request_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.request_update_fields
    ADD CONSTRAINT request_update_fields_change_request_id_foreign FOREIGN KEY (change_request_id) REFERENCES public.change_requests(id) ON DELETE SET NULL;


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
-- Name: revision_requests revision_requests_change_request_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_change_request_type_id_foreign FOREIGN KEY (change_request_type_id) REFERENCES public.change_request_type(id) ON DELETE SET NULL;


--
-- Name: revision_requests revision_requests_priority_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_priority_id_foreign FOREIGN KEY (priority_id) REFERENCES public.priority(id) ON DELETE SET NULL;


--
-- Name: revision_requests revision_requests_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: revision_requests revision_requests_status_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.status(id) ON DELETE SET NULL;


--
-- Name: revision_requests revision_requests_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: revision_requests revision_requests_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revision_requests
    ADD CONSTRAINT revision_requests_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


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

