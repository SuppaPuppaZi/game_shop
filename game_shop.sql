--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-06-16 00:14:08

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
-- TOC entry 221 (class 1259 OID 20724)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 20723)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 223 (class 1259 OID 20733)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 20732)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 219 (class 1259 OID 20717)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 20716)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 225 (class 1259 OID 20740)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 20749)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 20748)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 224 (class 1259 OID 20739)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 229 (class 1259 OID 20756)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 20755)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 228
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 231 (class 1259 OID 20815)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 20814)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 217 (class 1259 OID 20708)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 20707)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 215 (class 1259 OID 20699)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 20698)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 248 (class 1259 OID 21044)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 20893)
-- Name: game_shop_app_developer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_developer (
    id bigint NOT NULL,
    developer_name character varying(100) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_developer OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 20892)
-- Name: game_shop_app_developer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_developer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_developer_id_seq OWNER TO postgres;

--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 238
-- Name: game_shop_app_developer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_developer_id_seq OWNED BY public.game_shop_app_developer.id;


--
-- TOC entry 233 (class 1259 OID 20845)
-- Name: game_shop_app_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_game (
    id bigint NOT NULL,
    game_name character varying(100) NOT NULL,
    description text NOT NULL,
    release_date date NOT NULL,
    developer_id bigint,
    publisher_id bigint,
    minimum_requirements text NOT NULL,
    recommended_requirements text NOT NULL,
    price double precision,
    image character varying(100),
    discount_price double precision,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_game OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 20997)
-- Name: game_shop_app_game_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_game_genres (
    id bigint NOT NULL,
    game_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.game_shop_app_game_genres OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 20996)
-- Name: game_shop_app_game_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_game_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_game_genre_id_seq OWNER TO postgres;

--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 244
-- Name: game_shop_app_game_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_game_genre_id_seq OWNED BY public.game_shop_app_game_genres.id;


--
-- TOC entry 232 (class 1259 OID 20844)
-- Name: game_shop_app_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_game_id_seq OWNER TO postgres;

--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 232
-- Name: game_shop_app_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_game_id_seq OWNED BY public.game_shop_app_game.id;


--
-- TOC entry 252 (class 1259 OID 21067)
-- Name: game_shop_app_game_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_game_languages (
    id bigint NOT NULL,
    game_id bigint NOT NULL,
    language_id bigint NOT NULL
);


ALTER TABLE public.game_shop_app_game_languages OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 21066)
-- Name: game_shop_app_game_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_game_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_game_languages_id_seq OWNER TO postgres;

--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 251
-- Name: game_shop_app_game_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_game_languages_id_seq OWNED BY public.game_shop_app_game_languages.id;


--
-- TOC entry 243 (class 1259 OID 20976)
-- Name: game_shop_app_game_platforms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_game_platforms (
    id bigint NOT NULL,
    game_id bigint NOT NULL,
    platform_id bigint NOT NULL
);


ALTER TABLE public.game_shop_app_game_platforms OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 20975)
-- Name: game_shop_app_game_platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_game_platforms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_game_platforms_id_seq OWNER TO postgres;

--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 242
-- Name: game_shop_app_game_platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_game_platforms_id_seq OWNED BY public.game_shop_app_game_platforms.id;


--
-- TOC entry 247 (class 1259 OID 21018)
-- Name: game_shop_app_gamescreenshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_gamescreenshots (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(100),
    description text NOT NULL,
    game_id bigint
);


ALTER TABLE public.game_shop_app_gamescreenshots OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 21017)
-- Name: game_shop_app_gamescreenshots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_gamescreenshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_gamescreenshots_id_seq OWNER TO postgres;

--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 246
-- Name: game_shop_app_gamescreenshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_gamescreenshots_id_seq OWNED BY public.game_shop_app_gamescreenshots.id;


--
-- TOC entry 235 (class 1259 OID 20854)
-- Name: game_shop_app_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_genre (
    id bigint NOT NULL,
    genre_name character varying(50) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_genre OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 20853)
-- Name: game_shop_app_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_genre_id_seq OWNER TO postgres;

--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 234
-- Name: game_shop_app_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_genre_id_seq OWNED BY public.game_shop_app_genre.id;


--
-- TOC entry 250 (class 1259 OID 21060)
-- Name: game_shop_app_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_language (
    id bigint NOT NULL,
    language_name character varying(50) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_language OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 21059)
-- Name: game_shop_app_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_language_id_seq OWNER TO postgres;

--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 249
-- Name: game_shop_app_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_language_id_seq OWNED BY public.game_shop_app_language.id;


--
-- TOC entry 254 (class 1259 OID 21100)
-- Name: game_shop_app_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_order (
    id bigint NOT NULL,
    user_id integer,
    card character varying(20),
    order_date date,
    order_items jsonb,
    total_price double precision,
    status character varying(15),
    card_validity_period character varying(5),
    cvv_code integer,
    CONSTRAINT game_shop_app_order_cvv_code_check CHECK ((cvv_code >= 0))
);


ALTER TABLE public.game_shop_app_order OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 21099)
-- Name: game_shop_app_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_order_id_seq OWNER TO postgres;

--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 253
-- Name: game_shop_app_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_order_id_seq OWNED BY public.game_shop_app_order.id;


--
-- TOC entry 237 (class 1259 OID 20861)
-- Name: game_shop_app_platform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_platform (
    id bigint NOT NULL,
    platform_name character varying(50) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_platform OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 20860)
-- Name: game_shop_app_platform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_platform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_platform_id_seq OWNER TO postgres;

--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 236
-- Name: game_shop_app_platform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_platform_id_seq OWNED BY public.game_shop_app_platform.id;


--
-- TOC entry 241 (class 1259 OID 20900)
-- Name: game_shop_app_publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_shop_app_publisher (
    id bigint NOT NULL,
    publisher_name character varying(100) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.game_shop_app_publisher OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 20899)
-- Name: game_shop_app_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_shop_app_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_shop_app_publisher_id_seq OWNER TO postgres;

--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 240
-- Name: game_shop_app_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_shop_app_publisher_id_seq OWNED BY public.game_shop_app_publisher.id;


--
-- TOC entry 3275 (class 2604 OID 20727)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3276 (class 2604 OID 20736)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 20720)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3277 (class 2604 OID 20743)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 20752)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 20759)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 20818)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 20711)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3272 (class 2604 OID 20702)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3284 (class 2604 OID 20896)
-- Name: game_shop_app_developer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_developer ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_developer_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 20848)
-- Name: game_shop_app_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_game_id_seq'::regclass);


--
-- TOC entry 3287 (class 2604 OID 21000)
-- Name: game_shop_app_game_genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_genres ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_game_genre_id_seq'::regclass);


--
-- TOC entry 3290 (class 2604 OID 21070)
-- Name: game_shop_app_game_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_languages ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_game_languages_id_seq'::regclass);


--
-- TOC entry 3286 (class 2604 OID 20979)
-- Name: game_shop_app_game_platforms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_platforms ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_game_platforms_id_seq'::regclass);


--
-- TOC entry 3288 (class 2604 OID 21021)
-- Name: game_shop_app_gamescreenshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_gamescreenshots ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_gamescreenshots_id_seq'::regclass);


--
-- TOC entry 3282 (class 2604 OID 20857)
-- Name: game_shop_app_genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_genre ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_genre_id_seq'::regclass);


--
-- TOC entry 3289 (class 2604 OID 21063)
-- Name: game_shop_app_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_language ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_language_id_seq'::regclass);


--
-- TOC entry 3291 (class 2604 OID 21103)
-- Name: game_shop_app_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_order ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_order_id_seq'::regclass);


--
-- TOC entry 3283 (class 2604 OID 20864)
-- Name: game_shop_app_platform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_platform ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_platform_id_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 20903)
-- Name: game_shop_app_publisher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_publisher ALTER COLUMN id SET DEFAULT nextval('public.game_shop_app_publisher_id_seq'::regclass);


--
-- TOC entry 3559 (class 0 OID 20724)
-- Dependencies: 221
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3561 (class 0 OID 20733)
-- Dependencies: 223
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3557 (class 0 OID 20717)
-- Dependencies: 219
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add game', 1, 'add_game');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change game', 1, 'change_game');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete game', 1, 'delete_game');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view game', 1, 'view_game');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add genre', 2, 'add_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change genre', 2, 'change_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete genre', 2, 'delete_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view genre', 2, 'view_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add developer', 3, 'add_developer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change developer', 3, 'change_developer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete developer', 3, 'delete_developer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view developer', 3, 'view_developer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add publisher', 4, 'add_publisher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change publisher', 4, 'change_publisher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete publisher', 4, 'delete_publisher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view publisher', 4, 'view_publisher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add image', 5, 'add_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change image', 5, 'change_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete image', 5, 'delete_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view image', 5, 'view_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add game screenshots', 6, 'add_gamescreenshots');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change game screenshots', 6, 'change_gamescreenshots');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete game screenshots', 6, 'delete_gamescreenshots');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view game screenshots', 6, 'view_gamescreenshots');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add language', 7, 'add_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change language', 7, 'change_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete language', 7, 'delete_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view language', 7, 'view_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add log entry', 8, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change log entry', 8, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete log entry', 8, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view log entry', 8, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add permission', 9, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change permission', 9, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete permission', 9, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view permission', 9, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add group', 10, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change group', 10, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete group', 10, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view group', 10, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add user', 11, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change user', 11, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete user', 11, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view user', 11, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add content type', 12, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change content type', 12, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete content type', 12, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view content type', 12, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add session', 13, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change session', 13, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete session', 13, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view session', 13, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add platform', 7, 'add_platform');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change platform', 7, 'change_platform');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete platform', 7, 'delete_platform');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view platform', 7, 'view_platform');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add language', 14, 'add_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change language', 14, 'change_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete language', 14, 'delete_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view language', 14, 'view_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add order', 15, 'add_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change order', 15, 'change_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete order', 15, 'delete_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view order', 15, 'view_order');


--
-- TOC entry 3563 (class 0 OID 20740)
-- Dependencies: 225
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$320000$OtXETjixQAhKhoorDqcgz6$XtkFaxxSlyX2F60ZsWheK2dkLcpwEA+BXVW/iD8u6bk=', '2023-06-04 13:51:56.918957+04', false, '1', 'Захар', 'Разуткин', 'kgames@mail.ru', false, true, '2023-06-04 13:51:49.962383+04');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$320000$D3Ca6oYqqUUiYvDWv9BR2e$QNzR6eZogAeoaNraSyy+LD3ueEu08yvDY/ibnC/mWZU=', '2023-06-02 14:54:27.569637+04', false, 'user', 'Захар', 'Разуткин', 'zaxarka16@mail.ru', false, true, '2023-06-02 14:54:14.973881+04');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (5, 'pbkdf2_sha256$320000$jSE1MpWqAZvOexiGs8DR5J$69EDCnHefMZPe1FU3fWM/hzJSRjLYXrz5x2WrKHA3Ro=', '2023-06-08 01:07:57.166924+04', false, '2', 'qwerty', 'Zi', 'wasd9755@gmail.com', false, true, '2023-06-08 00:57:53.155549+04');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$320000$VfXBWf6ZLd2NX33zosCmEl$YNKhrKVE6VxGHyIMGYvOn2IFsLvEofwtiH/cXvgANOk=', NULL, false, 'test_user', 'test_name', 'test_last_name', 'test@mail.ru', false, true, '2023-05-28 16:17:53+04');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$320000$BJ1XKsVLW4WG5tPBUGWaAJ$WJv4iznS8fOsu7wBCounBQw7bvwZbQPYRuWpdLMDj44=', '2023-06-10 18:30:44.402158+04', true, 'admin', 'Иван', 'Иванов', 'vasiavasiliy@mail.ru', true, true, '2023-05-20 00:30:49.683396+04');


--
-- TOC entry 3565 (class 0 OID 20749)
-- Dependencies: 227
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3567 (class 0 OID 20756)
-- Dependencies: 229
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3569 (class 0 OID 20815)
-- Dependencies: 231
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2023-05-20 00:44:53.702296+04', '1', 'Super Zi Games', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2023-05-20 00:44:56.0049+04', '2', 'Alabaster', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2023-05-20 00:44:58.363519+04', '3', 'Korter Games', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2023-05-20 00:45:00.663856+04', '4', 'Sleeping Games', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2023-05-20 00:45:02.809167+04', '5', 'Tour De Pizza', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2023-05-20 00:45:05.616425+04', '6', 'Edmund McMillen', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2023-05-20 00:45:19.281206+04', '1', 'Шутер', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2023-05-20 00:45:29.049201+04', '2', 'Приключение', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2023-05-20 00:45:35.074691+04', '3', 'Кликер', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2023-05-20 00:45:43.302157+04', '4', 'Драки', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2023-05-20 00:45:49.381761+04', '5', 'Квесты', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2023-05-20 00:46:02.497834+04', '6', 'Rogue-like', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2023-05-20 00:47:55.369391+04', '1', 'PC', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2023-05-20 00:47:59.935202+04', '2', 'XBOX ONE', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2023-05-20 00:48:03.890926+04', '3', 'PS4', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2023-05-20 00:48:07.017244+04', '4', 'PS5', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2023-05-20 00:48:10.367833+04', '5', 'Nin', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2023-05-20 00:48:20.17821+04', '5', 'Nintendo Switch', 2, '[{"changed": {"fields": ["Platform name"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2023-05-20 00:48:26.981041+04', '1', 'Red Sun', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2023-05-20 00:48:29.208284+04', '2', 'Running Coffee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2023-05-20 00:48:31.341839+04', '3', 'Super Zi Games', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2023-05-20 00:48:38.108135+04', '4', 'Sleeping Games', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2023-05-20 00:48:40.370526+04', '5', 'Tour De Pizza', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2023-05-20 00:50:47.055229+04', '1', 'Streggle', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2023-05-20 00:52:57.271779+04', '2', 'Pizza Tower', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2023-05-20 00:54:49.763697+04', '3', 'The way of the damned', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2023-05-20 00:54:57.582019+04', '7', 'RPG', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2023-05-20 00:55:03.364642+04', '8', 'Экшн', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2023-05-20 00:55:21.676282+04', '3', 'The way of the damned', 2, '[{"changed": {"fields": ["Genres"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2023-05-20 00:55:28.759048+04', '2', 'Pizza Tower', 2, '[{"changed": {"fields": ["Genres"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2023-05-20 00:58:39.966512+04', '4', 'Doom Eternal', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2023-05-20 01:01:09.25022+04', '5', 'Celeste', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2023-05-20 01:02:50.248566+04', '6', 'Dead Cells', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2023-05-20 01:03:54.440943+04', '9', 'Стратегии', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2023-05-20 01:04:07.54492+04', '10', 'Головоломки', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2023-05-20 01:06:04.52049+04', '7', 'Chess 2: The Sequel', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2023-05-20 01:06:55.012017+04', '6', 'Cobolt', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2023-05-20 01:07:05.266837+04', '7', 'Four Sigils', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2023-05-20 01:07:18.100965+04', '8', 'Andromeda', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2023-05-20 01:07:42.029826+04', '7', 'Gold Games', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2023-05-20 01:08:02.459825+04', '8', 'Diamoond', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2023-05-20 01:10:04.269328+04', '8', 'Horizon Zero Dawn', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2023-05-20 01:13:48.681635+04', '9', 'Ведьмак 3: Дикая Охота', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2023-05-20 01:15:57.564859+04', '10', 'The Binding of Isaac: Repentance', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2023-05-20 01:16:07.323543+04', '9', 'Nical', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2023-05-20 01:16:13.408277+04', '9', 'Nicalis inc.', 2, '[{"changed": {"fields": ["Publisher name"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2023-05-20 01:16:30.058564+04', '10', 'The Binding of Isaac: Repentance', 2, '[{"changed": {"fields": ["Publisher"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2023-05-21 00:08:09.991345+04', '1', 'Streggle s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2023-05-21 00:09:02.782258+04', '2', 'Streggle s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2023-05-21 00:09:25.849805+04', '3', 'Streggle s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2023-05-21 00:19:45.736414+04', '1', 'Streggle', 2, '[{"changed": {"fields": ["Description"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2023-05-21 01:34:54.885217+04', '3', 'Кликеры', 2, '[{"changed": {"fields": ["Genre name"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2023-05-21 01:35:18.041497+04', '11', 'Спортивные', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2023-05-21 01:35:28.768998+04', '1', 'Шутеры', 2, '[{"changed": {"fields": ["Genre name"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2023-05-21 15:35:52.172741+04', '4', 'Pizza Tower s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2023-05-21 15:36:09.808228+04', '5', 'Pizza Tower s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2023-05-21 15:36:26.934712+04', '6', 'Pizza Tower s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2023-05-21 15:41:46.164692+04', '7', 'Doom Eternal s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2023-05-21 15:46:59.896006+04', '8', 'Doom Eternal s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2023-05-21 15:47:19.775285+04', '9', 'Doom Eternal s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2023-05-21 15:51:59.146108+04', '10', 'Chess 2: The Sequel s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2023-05-21 15:52:21.086417+04', '11', 'Chess 2: The Sequel s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2023-05-21 15:52:39.465355+04', '12', 'Chess 2: The Sequel s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2023-05-21 15:59:44.370909+04', '13', 'The way of the damned s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2023-05-21 16:00:00.383356+04', '14', 'The way of the damned s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2023-05-21 16:05:16.826402+04', '15', 'The way of the damned s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2023-05-21 16:09:29.011459+04', '16', 'The Binding of Isaac: Repentance', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2023-05-21 16:09:38.665246+04', '16', 'The Binding of Isaac: Repentance s1', 2, '[{"changed": {"fields": ["Title"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2023-05-21 16:10:11.313458+04', '17', 'The Binding of Isaac: Repentance s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2023-05-21 16:10:50.855215+04', '18', 'The Binding of Isaac: Repentance s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (71, '2023-05-21 16:12:07.139148+04', '16', 'The Binding of Isaac: Repentance s1', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (72, '2023-05-21 16:12:12.442987+04', '17', 'The Binding of Isaac: Repentance s2', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (73, '2023-05-21 16:12:15.853894+04', '18', 'The Binding of Isaac: Repentance s3', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (74, '2023-05-21 16:12:24.231091+04', '16', 'The Binding of Isaac: Repentance s1', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (75, '2023-05-21 16:12:34.536524+04', '17', 'The Binding of Isaac: Repentance s2', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (76, '2023-05-21 16:12:41.126395+04', '18', 'The Binding of Isaac: Repentance s3', 2, '[{"changed": {"fields": ["Image"]}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (77, '2023-05-21 16:17:20.968274+04', '19', 'Celeste s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (78, '2023-05-21 16:17:52.94858+04', '20', 'Celeste s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (79, '2023-05-21 16:18:07.555832+04', '21', 'Celeste s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (80, '2023-05-21 16:19:03.725826+04', '5', 'Celeste', 2, '[{"changed": {"fields": ["Description"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (81, '2023-05-21 16:27:23.139068+04', '22', 'Dead Cells s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (82, '2023-05-21 16:27:36.809169+04', '23', 'Dead Cells s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (83, '2023-05-21 16:27:52.447799+04', '24', 'Dead Cells s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (84, '2023-05-21 16:51:22.631337+04', '25', 'Witcher 3: Wild hunt s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (85, '2023-05-21 16:51:38.34671+04', '26', 'Witcher 3: Wild hunt s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (86, '2023-05-21 16:51:52.672813+04', '27', 'Witcher 3: Wild hunt s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (87, '2023-05-21 17:02:46.402265+04', '28', 'Horizon Zero Dawn s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (88, '2023-05-21 17:03:02.046006+04', '29', 'Horizon Zero Dawn s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (89, '2023-05-21 17:03:26.764831+04', '30', 'Horizon Zero Dawn s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (90, '2023-05-23 18:43:20.348734+04', '1', 'Русский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (91, '2023-05-23 18:43:25.600231+04', '2', 'Английский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (92, '2023-05-23 18:44:02.670295+04', '3', 'Итальянский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (93, '2023-05-23 18:44:11.11491+04', '4', 'Немецкий', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (94, '2023-05-23 18:44:58.266196+04', '5', 'Французский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (95, '2023-05-23 18:45:15.440273+04', '6', 'Китайский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (96, '2023-05-23 18:45:19.367067+04', '7', 'Японский', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (97, '2023-05-23 18:55:39.88256+04', '10', 'The Binding of Isaac: Repentance', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (98, '2023-05-23 18:55:56.73258+04', '9', 'Ведьмак 3: Дикая Охота', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (99, '2023-05-23 18:56:05.630341+04', '8', 'Horizon Zero Dawn', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (100, '2023-05-23 18:56:18.670954+04', '7', 'Chess 2: The Sequel', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (101, '2023-05-23 18:56:29.354219+04', '6', 'Dead Cells', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (102, '2023-05-23 18:56:37.735287+04', '5', 'Celeste', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (103, '2023-05-23 18:56:49.220994+04', '4', 'Doom Eternal', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (104, '2023-05-23 18:56:59.289636+04', '3', 'The way of the damned', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (105, '2023-05-23 18:57:08.561937+04', '2', 'Pizza Tower', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (106, '2023-05-23 18:57:17.011358+04', '1', 'Streggle', 2, '[{"changed": {"fields": ["Languages"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (107, '2023-05-28 16:17:53.222388+04', '2', 'test_user', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (108, '2023-05-28 16:18:40.248355+04', '2', 'test_user', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (109, '2023-05-28 19:22:53.766126+04', '11', 'Hollow Knight', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (110, '2023-05-28 19:28:39.069611+04', '31', 'Hollow Knight s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (111, '2023-05-28 19:29:12.295313+04', '32', 'Hollow Knight s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (112, '2023-05-28 19:29:27.482239+04', '33', 'Hollow Knight s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (113, '2023-05-29 14:41:35.665118+04', '2', 'Приключение', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (114, '2023-05-29 14:41:44.620941+04', '1', 'Шутеры', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (115, '2023-05-29 14:41:50.830102+04', '3', 'Кликеры', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (116, '2023-05-29 14:42:15.846511+04', '4', 'Драки', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (117, '2023-05-29 14:42:22.578687+04', '3', 'Кликеры', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (118, '2023-05-29 14:42:25.786751+04', '2', 'Приключение', 2, '[]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (119, '2023-05-29 14:42:30.752195+04', '1', 'Шутеры', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (120, '2023-05-29 14:42:38.992104+04', '5', 'Квесты', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (121, '2023-05-29 14:42:49.072907+04', '6', 'Rogue-like', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (122, '2023-05-29 14:42:54.546454+04', '7', 'RPG', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (123, '2023-05-29 14:42:59.873553+04', '8', 'Экшн', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (124, '2023-05-29 14:43:07.243569+04', '9', 'Стратегии', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (125, '2023-05-29 14:43:30.291899+04', '10', 'Головоломки', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (126, '2023-05-29 14:43:37.786862+04', '11', 'Спортивные', 2, '[{"changed": {"fields": ["Slug"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (127, '2023-05-29 14:47:37.202928+04', '8', 'Diamoond', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (128, '2023-05-29 14:47:42.22384+04', '8', 'Diamoond', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (129, '2023-05-29 14:47:55.930625+04', '7', 'Gold Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (130, '2023-05-29 14:48:27.184567+04', '6', 'Edmund McMillen', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (131, '2023-05-29 14:48:42.160031+04', '5', 'Tour De Pizza', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (132, '2023-05-29 14:48:53.032303+04', '4', 'Sleeping Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (133, '2023-05-29 14:49:04.86545+04', '3', 'Korter Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (134, '2023-05-29 14:49:17.244456+04', '2', 'Alabaster', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (135, '2023-05-29 14:49:32.040042+04', '1', 'Super Zi Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (136, '2023-05-29 14:50:15.336109+04', '11', 'Hollow Knight', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (137, '2023-05-29 14:51:31.493401+04', '10', 'The Binding of Isaac: Repentance', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (138, '2023-05-29 14:51:44.730315+04', '9', 'Ведьмак 3: Дикая Охота', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (139, '2023-05-29 14:52:05.221742+04', '8', 'Horizon Zero Dawn', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (140, '2023-05-29 14:52:29.466035+04', '7', 'Chess 2: The Sequel', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (141, '2023-05-29 14:52:37.381332+04', '6', 'Dead Cells', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (142, '2023-05-29 14:52:44.682362+04', '5', 'Celeste', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (143, '2023-05-29 14:52:53.555524+04', '4', 'Doom Eternal', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (144, '2023-05-29 14:53:06.934106+04', '3', 'The way of the damned', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (145, '2023-05-29 14:53:14.892513+04', '2', 'Pizza Tower', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (146, '2023-05-29 14:53:21.493811+04', '1', 'Streggle', 2, '[{"changed": {"fields": ["Slug"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (147, '2023-05-29 14:53:47.321071+04', '7', 'Японский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (148, '2023-05-29 14:54:02.412436+04', '6', 'Китайский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (149, '2023-05-29 14:54:23.154771+04', '5', 'Французский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (150, '2023-05-29 14:54:38.650216+04', '4', 'Немецкий', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (151, '2023-05-29 14:54:45.298136+04', '3', 'Итальянский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (152, '2023-05-29 14:54:52.963242+04', '2', 'Английский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (153, '2023-05-29 14:54:58.735465+04', '1', 'Русский', 2, '[{"changed": {"fields": ["Slug"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (154, '2023-05-29 14:55:12.875672+04', '5', 'Nintendo Switch', 2, '[{"changed": {"fields": ["Slug"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (155, '2023-05-29 14:55:24.457109+04', '4', 'PS5', 2, '[{"changed": {"fields": ["Slug"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (156, '2023-05-29 14:55:31.965717+04', '3', 'PS4', 2, '[{"changed": {"fields": ["Slug"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (157, '2023-05-29 14:55:42.455155+04', '2', 'XBOX ONE', 2, '[{"changed": {"fields": ["Slug"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (158, '2023-05-29 14:55:49.268745+04', '1', 'PC', 2, '[{"changed": {"fields": ["Slug"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (159, '2023-05-29 14:56:05.979753+04', '9', 'Nicalis inc.', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (160, '2023-05-29 14:56:13.689822+04', '8', 'Andromeda', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (161, '2023-05-29 14:56:23.624658+04', '7', 'Four Sigils', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (162, '2023-05-29 14:56:31.650804+04', '6', 'Cobolt', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (163, '2023-05-29 14:56:45.725764+04', '5', 'Tour De Pizza', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (164, '2023-05-29 14:56:55.537597+04', '4', 'Sleeping Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (165, '2023-05-29 14:57:10.71811+04', '3', 'Super Zi Games', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (166, '2023-05-29 14:57:23.810079+04', '2', 'Running Coffee', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (167, '2023-05-29 14:57:32.905113+04', '1', 'Red Sun', 2, '[{"changed": {"fields": ["Slug"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (168, '2023-06-05 21:07:44.285387+04', '12', 'Гонки', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (169, '2023-06-05 21:13:18.676389+04', '13', 'Инди', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (170, '2023-06-05 21:17:02.418617+04', '9', 'Psyonix LLC', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (171, '2023-06-05 21:17:20.166197+04', '10', 'Psyonix LLC', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (172, '2023-06-05 21:21:35.303634+04', '12', 'Rocket League', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (173, '2023-06-05 21:30:25.681841+04', '34', 'Rocket League s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (174, '2023-06-05 21:30:42.281372+04', '35', 'Rocket League s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (175, '2023-06-05 21:31:08.603215+04', '36', 'Rocket League s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (176, '2023-06-05 21:49:39.771085+04', '14', 'Симуляторы', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (177, '2023-06-05 22:25:08.307926+04', '11', 'The Irregular Corporation', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (178, '2023-06-05 22:25:56.410916+04', '13', 'Going Medieval', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (179, '2023-06-05 22:28:20.939291+04', '37', 'Going Medieval s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (180, '2023-06-05 22:28:43.118999+04', '38', 'Going Medieval s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (181, '2023-06-05 22:29:00.169038+04', '39', 'Going Medieval s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (182, '2023-06-05 22:31:55.7033+04', '15', 'Хорроры', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (183, '2023-06-05 22:45:40.562744+04', '10', 'Kinetic Games', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (184, '2023-06-05 22:46:50.140863+04', '14', 'Phasmophobia', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (185, '2023-06-05 22:49:22.073618+04', '40', 'Phasmophobia s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (186, '2023-06-05 22:49:37.321344+04', '41', 'Phasmophobia s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (187, '2023-06-05 22:49:55.579226+04', '42', 'Phasmophobia s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (188, '2023-06-05 23:03:41.186823+04', '11', 'Onyx Lute', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (189, '2023-06-05 23:04:51.856335+04', '15', 'Glass Masquerade 3: Honeylines', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (190, '2023-06-05 23:07:35.580089+04', '43', 'Glass Masquerade 3: Honeylines s1', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (191, '2023-06-05 23:07:49.456101+04', '44', 'Glass Masquerade 3: Honeylines s2', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (192, '2023-06-05 23:08:13.907306+04', '45', 'Glass Masquerade 3: Honeylines s3', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (193, '2023-06-07 18:09:42.722818+04', '3', 'Order object (3)', 1, '[{"added": {}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (194, '2023-06-08 00:43:13.509826+04', '6', 'Order object (6)', 3, '', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (195, '2023-06-08 00:43:13.53162+04', '5', 'Order object (5)', 3, '', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (196, '2023-06-08 00:43:13.533608+04', '4', 'Order object (4)', 3, '', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (197, '2023-06-08 00:43:13.53562+04', '3', 'Order object (3)', 3, '', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (198, '2023-06-13 20:44:55.570901+04', '6', 'zakhar19', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (199, '2023-06-15 12:38:46.372843+04', '39', 'Order object (39)', 2, '[{"changed": {"fields": ["Status"]}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (200, '2023-06-15 22:05:30.163128+04', '39', 'admin order', 2, '[{"changed": {"fields": ["Status"]}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (201, '2023-06-15 23:05:26.575968+04', '40', 'admin''s order', 2, '[{"changed": {"fields": ["Cvv code", "Status"]}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (202, '2023-06-15 23:33:59.275061+04', '41', 'admin''s order', 2, '[{"changed": {"fields": ["Status"]}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (203, '2023-06-15 23:34:03.167284+04', '40', 'admin''s order', 2, '[]', 15, 1);


--
-- TOC entry 3555 (class 0 OID 20708)
-- Dependencies: 217
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'game_shop_app', 'game');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'game_shop_app', 'genre');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'game_shop_app', 'developer');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'game_shop_app', 'publisher');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'game_shop_app', 'image');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'game_shop_app', 'gamescreenshots');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'game_shop_app', 'platform');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'game_shop_app', 'language');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'game_shop_app', 'order');


--
-- TOC entry 3553 (class 0 OID 20699)
-- Dependencies: 215
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-05-20 00:30:11.780425+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-05-20 00:30:11.889885+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-05-20 00:30:11.920681+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-05-20 00:30:11.932681+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-20 00:30:11.943681+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-05-20 00:30:11.966686+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-05-20 00:30:11.981684+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-05-20 00:30:11.995689+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-05-20 00:30:12.003687+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-05-20 00:30:12.015686+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-05-20 00:30:12.017948+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-20 00:30:12.029948+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-05-20 00:30:12.042883+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-20 00:30:12.053888+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-05-20 00:30:12.068884+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-05-20 00:30:12.078886+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-20 00:30:12.091888+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'game_shop_app', '0001_initial', '2023-05-20 00:30:12.157891+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'game_shop_app', '0002_alter_game_genre_alter_game_platform', '2023-05-20 00:30:12.195851+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'game_shop_app', '0003_developer_publisher_game_price_alter_game_developer_and_more', '2023-05-20 00:30:12.26469+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'game_shop_app', '0004_remove_developer_email_remove_publisher_email', '2023-05-20 00:30:12.27969+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'game_shop_app', '0005_image', '2023-05-20 00:30:12.299694+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'game_shop_app', '0006_remove_image_game_game_image', '2023-05-20 00:30:12.331694+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'game_shop_app', '0007_remove_image_img_name', '2023-05-20 00:30:12.338694+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'game_shop_app', '0008_alter_game_image_delete_image', '2023-05-20 00:30:12.377409+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'game_shop_app', '0009_alter_game_image', '2023-05-20 00:30:12.391262+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'game_shop_app', '0010_rename_image_game_image_name', '2023-05-20 00:30:12.402262+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'game_shop_app', '0011_remove_game_image_name_game_image', '2023-05-20 00:30:12.413263+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'game_shop_app', '0012_image_alter_game_image', '2023-05-20 00:30:12.431084+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'game_shop_app', '0013_alter_game_image_alter_image_image', '2023-05-20 00:30:12.440083+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'game_shop_app', '0014_remove_game_image_game_image_name', '2023-05-20 00:30:12.45557+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'game_shop_app', '0015_alter_game_image_name_alter_image_image', '2023-05-20 00:30:12.466571+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'game_shop_app', '0016_remove_game_image_name_game_image_alter_image_image', '2023-05-20 00:30:12.479576+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'game_shop_app', '0017_game_image_name', '2023-05-20 00:30:12.491576+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'game_shop_app', '0018_alter_game_image_name', '2023-05-20 00:30:12.499576+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'game_shop_app', '0019_remove_game_image_name_remove_game_platform_and_more', '2023-05-20 00:30:12.540946+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'game_shop_app', '0020_remove_game_genre_game_genre', '2023-05-20 00:30:12.583576+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'game_shop_app', '0021_rename_genre_game_genres', '2023-05-20 00:30:12.595576+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'game_shop_app', '0022_alter_game_genres_alter_game_platforms', '2023-05-20 00:30:12.635546+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'game_shop_app', '0023_alter_game_genres_alter_game_platforms', '2023-05-20 00:30:12.652547+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'game_shop_app', '0024_alter_game_genres_alter_game_platforms', '2023-05-20 00:30:12.669552+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'game_shop_app', '0025_gamescreenshots', '2023-05-20 00:30:12.69041+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'game_shop_app', '0026_alter_gamescreenshots_game', '2023-05-20 00:30:12.720413+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'game_shop_app', '0027_game_own_production', '2023-05-20 00:30:12.733414+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'game_shop_app', '0028_alter_game_image', '2023-05-20 00:30:12.742413+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'game_shop_app', '0029_alter_game_image', '2023-05-20 00:30:12.752414+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'game_shop_app', '0030_alter_game_image', '2023-05-20 00:30:12.763416+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'game_shop_app', '0031_rename_platform_language_and_more', '2023-05-20 00:30:12.818418+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'sessions', '0001_initial', '2023-05-20 00:30:12.838422+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (50, 'game_shop_app', '0032_rename_language_platform_and_more', '2023-05-20 00:36:45.147336+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (51, 'game_shop_app', '0033_language_alter_developer_developer_name_and_more', '2023-05-23 18:41:15.907022+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (52, 'game_shop_app', '0034_game_languages', '2023-05-23 18:49:59.329497+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (53, 'game_shop_app', '0035_remove_game_own_production', '2023-05-23 21:45:03.348859+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (54, 'game_shop_app', '0036_delete_image', '2023-05-23 22:06:42.167111+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (55, 'game_shop_app', '0037_game_discount_price', '2023-05-28 01:15:18.345617+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (56, 'game_shop_app', '0038_genre_slug', '2023-05-29 14:40:46.531759+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (57, 'game_shop_app', '0039_developer_slug_game_slug_language_slug_platform_slug_and_more', '2023-05-29 14:45:36.105989+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (58, 'game_shop_app', '0040_order', '2023-06-07 18:02:36.495896+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (59, 'game_shop_app', '0041_rename_quantity_order_item_quantity', '2023-06-08 00:14:16.017323+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (60, 'game_shop_app', '0042_remove_order_game_order_game_remove_order_user_and_more', '2023-06-08 00:42:00.635903+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (61, 'game_shop_app', '0043_remove_order_game_order_game_remove_order_user_and_more', '2023-06-08 00:44:16.302782+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (62, 'game_shop_app', '0044_rename_user_order_user_id_remove_order_game_and_more', '2023-06-10 01:13:03.218231+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (63, 'game_shop_app', '0045_rename_user_id_order_user', '2023-06-10 02:08:18.346534+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (64, 'game_shop_app', '0046_order_total_price', '2023-06-10 21:01:17.057421+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (65, 'game_shop_app', '0047_remove_order_total_price', '2023-06-10 21:28:32.761933+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (66, 'game_shop_app', '0048_remove_order_card_validity_period_and_more', '2023-06-13 00:30:59.40812+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (67, 'game_shop_app', '0049_order_status', '2023-06-15 12:38:22.082532+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (68, 'game_shop_app', '0050_order_card_validity_period_order_cvv_code', '2023-06-15 22:17:07.319843+04');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (69, 'game_shop_app', '0051_alter_order_cvv_code', '2023-06-15 22:17:07.33822+04');


--
-- TOC entry 3586 (class 0 OID 21044)
-- Dependencies: 248
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('hecbdzyrlr4ekfcloklk1hrh3nhmknix', '.eJxVjEEOwiAQRe_C2hCYQkdcuu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIitDj9boH4keoO4p3qrUludV3mIHdFHrTLqcX0vB7u30GhXr61hawSx5yRg0KOmI2j7M5uYA1BEQ-oHRCDCcijsZAAMlgkxoHGaMX7AwasOF4:1q9sx8:YdOqjhYHh5l2rmw4_eQqB87CF_MHXul7RR1bcv_TT1s', '2023-06-29 23:48:18.964157+04');


--
-- TOC entry 3577 (class 0 OID 20893)
-- Dependencies: 239
-- Data for Name: game_shop_app_developer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (8, 'Diamoond', 'diamoond');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (7, 'Gold Games', 'gold-games');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (6, 'Edmund McMillen', 'edmund-mcmillen');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (5, 'Tour De Pizza', 'tour-de-pizza');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (4, 'Sleeping Games', 'sleeping-games');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (3, 'Korter Games', 'korter-games');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (2, 'Alabaster', 'alabaster');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (1, 'Super Zi Games', 'super-zi-games');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (9, 'Psyonix LLC', 'psyonix-llc');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (10, 'Kinetic Games', 'kinetic-games');
INSERT INTO public.game_shop_app_developer (id, developer_name, slug) VALUES (11, 'Onyx Lute', 'onyx-lute');


--
-- TOC entry 3571 (class 0 OID 20845)
-- Dependencies: 233
-- Data for Name: game_shop_app_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (4, 'Doom Eternal', 'Doom Eternal является частью серии игр Doom и прямым сиквелом компьютерной игры Doom 2016 года. В рамках сюжетной кампании игрок вновь берет на себя роль Палача Рока, а события игры разворачиваются спустя два года после событий, произошедших на Марсе. Палач должен остановить Культ Деаг, который вместе с перешедшей на сторону Ада Объединённой Аэрокосмической Корпорацией собираются уничтожить человечество.', '2021-05-20', 3, 2, 'Операционная система: Windows 7, 8.1, 10 (64 бита)
Процессор: Intel Core i5 (3.3 ГГц) или AMD Ryzen 3 (3.1 ГГц) и лучше
Видеокарта: NVIDIA GeForce GTX 970 (4 Гб) / GTX 1060 (6 Гб) / GTX 1650 (4 Гб) или AMD Radeon R9 290 (4 Гб) / RX 470 (4 Гб) и лучше
Оперативная память: 8 Гб
Свободное место: 50 Гб', 'Операционная система: 64-Bit Windows 10
Процессор: Intel Core i7-6700K (или лучше)/AMD Ryzen 7 1800X (или лучше)
Память: 50 ГБ свободного места на диске
Оперативная память: 16 ГБ
Графика: NVIDIA GeForce GTX 1080 (8GB), RTX 2060 (8GB) или AMD Radeon RX Vega56 (8GB)', 1200, 'games/doom_eternal_preview.PNG', NULL, 'doom-eternal');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (2, 'Pizza Tower', 'Pizza Tower - это быстро развивающийся 2D-платформер, вдохновленный серией Wario Land, с акцентом на передвижение, разведку и результативную атаку. С сильно стилизованной пиксельной графикой, вдохновленной мультфильмами 90-х, и очень энергичным саундтреком.', '2023-01-21', 5, 5, '64-разрядные процессор и операционная система
ОС: Windows 7
Процессор: Intel or AMD Dual Core CPU
Оперативная память: 512 MB ОЗУ
Видеокарта: GeForce GT 1030 (2 GB) or equivalent
DirectX: Версии 11
Место на диске: 300 MB', '64-разрядные процессор и операционная система
ОС: Windows 10
Процессор: Intel or AMD Dual Core CPU
Оперативная память: 512 MB ОЗУ
Видеокарта: GeForce GT 1030 (2 GB) or equivalent
DirectX: Версии 12
Место на диске: 400 MB', 419, 'games/pizza_tower_preview.PNG', NULL, 'pizza-tower');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (3, 'The way of the damned', 'Проклятой семьи. Месть свершилась, но взамен Проклятый должен помочь своему новому хозяину уничтожить других высших демонов.

В конце каждого этажа, после победы над стражем или боссом, вам нужно потратить от 1 до 3 очков здоровья и купить новые способности или оружие для своего здоровья.', '2023-02-28', 4, 4, 'OS:Windows XP/Vista/7
Processor:1.6 Ghz
Memory:1 GB RAM
Graphics:X1950 Pro, 7900 GT
DirectX®:9.0c
Hard Drive:400 MB HD space
Additional:Only available in desktop mode for Windows 8.', 'OS:Windows XP/Vista/7
Processor:2 Ghz
Memory:2 GB RAM
Graphics:HD 4770, 8800 GTX
DirectX®:9.0c
Hard Drive:400 MB HD space
Additional:Only available in desktop mode for Windows 8.', 350, 'games/way_of_damned_preview.PNG', NULL, 'the-way-of-the-damned');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (6, 'Dead Cells', 'Dead Cells — это экшн-платформер в жанре Rogue-lite и Metroidvania. Вас ждет огромный, постоянно меняющийся замок... Если, конечно, вы сможете победить тех, кто встанет у вас на пути, в 2D-схватках в стиле Souls-lite. Без сохранений. Убивайте, умирайте, учитесь и пробуйте снова.', '2022-06-07', 3, 1, 'ОС: Windows 7+
Процессор: Intel i5+
Оперативная память: 2 GB ОЗУ
Видеокарта: Nvidia 450 GTS / Radeon HD 5750 or better
Место на диске: 500 MB
Дополнительно: DirectX 9.1+ or OpenGL 3.2+', 'ОС: Windows 7+
Процессор: Intel i5+
Оперативная память: 4 GB ОЗУ
Видеокарта: Nvidia GTX 460 / Radeon HD 7800 or better
Место на диске: 500 MB
Дополнительно: DirectX 9.1+ or OpenGL 3.2+', 790, 'games/dead_cells_preview.PNG', NULL, 'dead-cells');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (8, 'Horizon Zero Dawn', 'Действие Horizon Zero Dawn происходит в постапокалиптическом мире, захваченном роботами; малочисленные люди живут в первобытных племенах. Главная героиня, молодая охотница Элой отправляется в путешествие в надежде узнать своё прошлое. В ходе игры Элой исследует окружающий мир, посещает различные поселения и с помощью копья и лука охотится на механических зверей, чьи тела может разбирать для получения полезных ресурсов; охота зачастую требует от игрока скрываться от противников, расставлять ловушки и выбирать наилучшее время для нападения.', '2020-07-14', 7, 8, 'Операционная система: Windows 10 64-bit
Процессор: Intel Core i5-2500K @3.3GHz или AMD FX 6300 @3.5GHz
Оперативная память: 8 GB
HDD: 100 GB на жестком диске
Видеокарта: Nvidia GeForce GTX 780 или AMD Radeon R9 290 с 3 GB памяти
Версия DirectX: 12', 'Операционная система: Windows 10 64-bit
Процессор: Intel Core i7-4770K @3.5GHz или Ryzen 5 1500X @3.5GHz
Оперативная память: 16 GB
HDD: 100 GB на жестком диске
Видеокарта: Nvidia GeForce GTX 1060 или AMD Radeon RX 580 с 6 GB памяти
Версия DirectX: 12', 1400, 'games/horizon_preview.PNG', NULL, 'horizon-zero-dawn');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (9, 'Ведьмак 3: Дикая Охота', 'Игра в стиле фэнтези, мир которой основан на славянской мифологии, повествует о ведьмаке Геральте из Ривии, охотнике на чудовищ, чья приёмная дочь Цири находится в опасности, будучи преследуемой Дикой Охотой — загадочной потусторонней силой, тайна которой раскрывается по ходу игры. Многие детали сюжета отсылают к книгам, написанным Сапковским, но сюжет остаётся связанным с первыми двумя частями и подводит итог трилогии, начатой первой игрой, вышедшей восемью годами ранее. В отличие от предыдущих игр, действие «Ведьмака 3» происходит в открытом мире и фокусируется на использовании боевых и детективных навыков Геральта для выполнения заказов и изучения окружающей среды.', '2017-06-22', 8, 7, 'Операционная система: 64-bit Windows 7 или 64-bit Windows 8 (8.1);
Процессор: Intel CPU Core i5-2500K 3.3 ГГц или AMD CPU Phenom II X4 940;
Оперативная память: 6 Гб;
Видеокарта: NVIDIA GPU GeForce GTX 660 или AMD GPU Radeon HD 7870;
Версия DirectX: 11;
Жесткий диск: 40 Гб.', 'Операционная система: 64-bit Windows 7 или 64-bit Windows 8 (8.1);
Процессор: Intel CPU Core i7 3770 3.4 ГГц или AMD CPU AMD FX-8350 4 ГГц;
Оперативная память: 8 Гб;
Видеокарта: NVIDIA GPU GeForce GTX 770 или AMD GPU Radeon R9 290;
Версия DirectX: 11;
Жесткий диск: 40 Гб.', 1500, 'games/witcher_preview.PNG', NULL, 'witcher-wild-hunt');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (1, 'Streggle', 'Streggle - это невероятная и потрясающая игра  в жанре "''Кликер" с захватывающим геймплеем. Кликай по яйцу и зарабатывай деньги на покупку различных улучшений и косметических элементов. Выполняй небольшие задания для открытия новых предметов и возможностей. Получай достижения, отображающие игровой прогресс. Входи в циклы и зарабатывай специальную игровую валюту, чтобы покупать особые предметы. Разгадывай секреты и получай уникальные скины, курсоры и фоны.', '2022-11-23', 1, 3, 'ОС: Microsoft® Windows Server 2008, Windows 7, or Windows 8 Classic
Процессор: 2.33GHz or faster x86-compatible processor, or Intel Atom™ 1.6GHz or faster processor for netbook class devices
Оперативная память: 512 MB ОЗУ
Место на диске: 90 MB', 'ОС: Microsoft® Windows Server 2008, Windows 7, or Windows 8 Classic
Процессор: 2.33GHz or faster x86-compatible processor, or Intel Atom™ 1.6GHz or faster processor for netbook class devices
Оперативная память: 512 MB ОЗУ
Место на диске: 100 MB', 250, 'games/streggle_preview.PNG', NULL, 'streggle');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (15, 'Glass Masquerade 3: Honeylines', 'Приготовьтесь к продолжению "Glass Masquerade"! Погрузитесь в прекрасный мир искусства расписного стекла и посмотрите на совершенно новые фактурные стеклянные кусочки. Собирайте вдохновленные различными культурами и темами пазлы в новых игровых режимах и с разнообразной нарезкой фрагментов.', '2023-05-31', 11, 2, '64-разрядные процессор и операционная система
ОС: Windows 7 (or higher)
Процессор: 1.6GHz CPU
Оперативная память: 1 GB ОЗУ
Видеокарта: Intel HD4000, AMD HD 6550D (or higier), 256Mb video memory
Место на диске: 1 GB', '64-разрядные процессор и операционная система
ОС: Windows 7 (or higher)
Процессор: 2.0GHz CPU or higher
Оперативная память: 2 GB ОЗУ
Видеокарта: Nvidia GTX 650, AMD HD7850 (or higher), 1GB video memory
Место на диске: 1 GB', 175, 'games/glass_preview.PNG', 0, 'glass-masquerade-honeylines');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (10, 'The Binding of Isaac: Repentance', 'Познакомьтесь с современной классикой "Переплет Исаака" так, как вы никогда раньше ее не видели. Эта игра слишком масштабна, чтобы называться продолжением: "Покаяние" возносит Айзека на новые высоты в ролевых приключениях в подземельях, когда отважный мальчик спускается в подвал, чтобы выполнить свое величайшее испытание на сегодняшний день! Новое задание Айзека перенесет его в неизвестные места, где он никогда не был, наполненные новыми ужасными врагами и боссами, комбинациями оружия, которые вы никогда раньше не использовали, и предметами, которых он никогда не видел... нечестивые ужасы из его самых смелых снов и худших кошмаров!', '2021-03-31', 6, 9, 'ОС: Windows 10
Процессор: i7
Оперативная память: 4 GB ОЗУ
Видеокарта: GeForce 900 Series
Место на диске: 666 MB
Звуковая карта: Yes', 'ОС: Windows 10
Процессор: i9
Оперативная память: 8 GB ОЗУ
Место на диске: 666 MB
Звуковая карта: Yes', 990, 'games/isaac_preview.PNG', NULL, 'the-binding-of-isaac-repentance');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (5, 'Celeste', 'В этом платформере от создателей мультиплеера TowerFall Мэдлин сражается со своими демонами на пути к вершине горы Селеста. Одиночная игра в старомодном стиле о поисках себя
Подъем на 700 экранов со сложными трюками и тайниками. Бонусные главы для самых отважных. Два часа музыки от финалиста конкурса «Совершенство в аудио» Independent Games Festival. Простое и удобное управление с массой сложных моментов, где каждое падение чему-то учит.', '2019-09-11', 2, 1, 'ОС: Windows 7 or newer
Процессор: Intel Core i3 M380
Оперативная память: 2 GB ОЗУ
Видеокарта: Intel HD 4000
DirectX: Версии 10
Место на диске: 1200 MB', 'ОС: Windows 7 or newer
Процессор: Intel Core i3 M380
Оперативная память: 2 GB ОЗУ
Видеокарта: Intel HD 4000
DirectX: Версии 10
Место на диске: 1200 MB', 580, 'games/celeste_preview.PNG', NULL, 'celeste');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (11, 'Hollow Knight', 'Hollow Knight – это эпическое приключение в огромном разрушенном королевстве, полном насекомых и героев. Исследуйте извилистые пещеры, сражайтесь с порчеными тварями и заводите дружбу со странными жуками – все это в классической двухмерной ручной рисовке.', '2017-02-24', 2, 6, 'ОС: Windows 7 (64bit)
Процессор: Intel Core 2 Duo E5200
Оперативная память: 4 GB ОЗУ
Видеокарта: GeForce 9800GTX+ (1GB)
DirectX: Версии 10
Место на диске: 9 GB
Дополнительно: 1080p, 16:9', 'ОС: Windows 10 (64bit)
Процессор: Intel Core i5
Оперативная память: 8 GB ОЗУ
Видеокарта: GeForce GTX 560
DirectX: Версии 11
Место на диске: 9 GB
Дополнительно: 1080p, 16:9', 550, 'games/hollow_knight_preview.PNG', 0, 'hollow-knight');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (7, 'Chess 2: The Sequel', 'Шахматы 2: Продолжение - это следующий шаг в эволюции шахмат, ориентированный на более жизнеспособные варианты, стратегический интерес и долгие годы опытной игры.

На выбор есть шесть армий, каждая со своими способностями и неповторимым колоритом:
Классика: Оригинальная армия из классических шахмат и единственная армия с ферзем.
Два короля: Два короля-воина с мощной атакой и дополнительным ходом.
Усиление: Слоны, кони и ладьи получают силу передвижения друг друга, когда находятся рядом.
Животные: Дикая смесь нетипичных атак, от которых трудно защититься.
Немезида: Целенаправленная атака на вражеского короля для тех, кто предпочитает ставить мат.
Жнец: Призрачная армия с телепортацией и бессмертием.', '2017-09-04', 3, 2, 'ОС: Windows XP, 7, 8
Процессор: 1 Gigahertz
Оперативная память: 300 MB ОЗУ
Видеокарта: 3D graphics card compatible with DirectX 9 or better
DirectX: Версии 9.0c
Место на диске: 350 MB', 'ОС: Windows XP, 7, 8
Процессор: 1 Gigahertz
Оперативная память: 300 MB ОЗУ
Видеокарта: 3D graphics card compatible with DirectX 9 or better
DirectX: Версии 9.0c
Место на диске: 350 MB', 180, 'games/chess_sequel_preview.PNG', NULL, 'chess-the-sequel');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (12, 'Rocket League', 'Встречайте долгожданное продолжение Supersonic Acrobatic Rocket-Powered Battle-Cars — всеми любимого основанного на физике сочетания футбола и гонок!

В футуристической спортивной игре Rocket League® игроки могут управлять мощными болидами, разрушать все вокруг ради наград и мастерски избегать столкновений на самых разнообразных аренах. Rocket League® реалистично передает взаимодействия в игре за счет продвинутой физической системы и реализации законов массы и импульса, что дает игрокам возможность интуитивного управления в этом невероятно энергичном варианте футбола.', '2015-07-07', 9, 10, 'ОС: Windows 7 (64 bit) or Newer (64 bit) Windows OS
Процессор: 2.5 GHz Dual core
Оперативная память: 4 GB ОЗУ
Видеокарта: NVIDIA GeForce 760, AMD Radeon R7 270X, or better
DirectX: Версии 11
Сеть: Широкополосное подключение к интернету
Место на диске: 20 GB', 'ОС: Windows 7 (64 bit) or Newer (64 bit) Windows OS
Процессор: 3.0+ GHz Quad core
Оперативная память: 8 GB ОЗУ
Видеокарта: NVIDIA GeForce GTX 1060, AMD Radeon RX 470, or better
DirectX: Версии 11
Сеть: Широкополосное подключение к интернету
Место на диске: 20 GB
Дополнительно: Gamepad or Controller Recommended', 419, 'games/rocket_leaque_preview.PNG', 0, 'rocket_league');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (13, 'Going Medieval', 'Going Medieval — это симулятор средневекового поселения. Восстаньте из пепла в это непростое время, постройте крепость и сделайте все для защиты и процветания жителей в мире, где каждое событие отражается на настроениях в обществе.', '2021-06-01', 2, 11, '64-разрядные процессор и операционная система
ОС: Windows 7 64-bit
Процессор: AMD or Intel, 3.3 GHz (AMD FX 8300, Intel i5 3000)
Оперативная память: 8 GB ОЗУ
Видеокарта: AMD/NVIDIA dedicated GPU, 2GB dedicated VRAM (Radeon RX 560, Geforce GTX 1050)
DirectX: Версии 11
Место на диске: 1 GB', '64-разрядные процессор и операционная система
ОС: Windows 10 64-bit
Процессор: AMD or Intel, 4 GHz (AMD Ryzen 5 3600, Intel i5 8600)
Оперативная память: 16 GB ОЗУ
Видеокарта: AMD/NVIDIA dedicated GPU, 4GB dedicated VRAM (Radeon RX 580, Geforce GTX 1080)
DirectX: Версии 11
Место на диске: 2 GB', 880, 'games/going_medieval_preview.PNG', 0, 'going_medieval');
INSERT INTO public.game_shop_app_game (id, game_name, description, release_date, developer_id, publisher_id, minimum_requirements, recommended_requirements, price, image, discount_price, slug) VALUES (14, 'Phasmophobia', 'Phasmophobia - это совместный психологический хоррор для 4 игроков. Паранормальная активность растет, и от вас и вашей команды зависит использовать все имеющееся в вашем распоряжении оборудование для охоты на привидений, чтобы собрать как можно больше доказательств.', '2020-09-18', 10, 7, '64-разрядные процессор и операционная система
ОС: Windows 10 64Bit
Процессор: Intel Core i5-4590 / AMD Ryzen 5 2600
Оперативная память: 8 GB ОЗУ
Видеокарта: NVIDIA GTX 970 / AMD Radeon R9 390
DirectX: Версии 11
Место на диске: 21 GB
Поддержка VR: OpenXR
Дополнительно: Minimum Specs are for VR, lower specs may work for Non-VR.', '64-разрядные процессор и операционная система
ОС: Windows 10 64Bit
Процессор: Intel Core i5-10600 / AMD Ryzen 5 3600
Оперативная память: 8 GB ОЗУ
Видеокарта: NVIDIA RTX 2060 / AMD Radeon RX 5700
DirectX: Версии 11
Сеть: Широкополосное подключение к интернету
Место на диске: 21 GB', 309, 'games/phasmophobia_preview.png', 0, 'phasmophobia');


--
-- TOC entry 3583 (class 0 OID 20997)
-- Dependencies: 245
-- Data for Name: game_shop_app_game_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (1, 1, 3);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (2, 2, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (3, 3, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (4, 3, 6);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (5, 3, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (6, 3, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (7, 2, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (8, 4, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (9, 4, 1);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (10, 4, 4);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (11, 4, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (12, 5, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (13, 5, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (14, 6, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (15, 6, 6);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (16, 6, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (17, 7, 9);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (18, 7, 10);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (19, 8, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (20, 8, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (21, 8, 5);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (22, 8, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (23, 9, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (24, 9, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (25, 9, 5);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (26, 9, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (27, 10, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (28, 10, 6);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (29, 10, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (30, 11, 2);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (31, 11, 5);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (32, 11, 7);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (33, 12, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (34, 12, 11);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (35, 12, 12);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (36, 12, 13);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (37, 13, 9);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (38, 13, 13);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (39, 13, 14);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (40, 14, 8);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (41, 14, 13);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (42, 14, 15);
INSERT INTO public.game_shop_app_game_genres (id, game_id, genre_id) VALUES (43, 15, 10);


--
-- TOC entry 3590 (class 0 OID 21067)
-- Dependencies: 252
-- Data for Name: game_shop_app_game_languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (1, 10, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (2, 10, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (3, 10, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (4, 10, 6);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (5, 9, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (6, 9, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (7, 9, 3);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (8, 9, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (9, 9, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (10, 9, 6);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (11, 9, 7);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (12, 8, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (13, 8, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (14, 8, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (15, 8, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (16, 7, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (17, 7, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (18, 6, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (19, 6, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (20, 6, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (21, 6, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (22, 6, 6);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (23, 6, 7);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (24, 5, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (25, 5, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (26, 4, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (27, 4, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (28, 4, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (29, 4, 6);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (30, 3, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (31, 3, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (32, 2, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (33, 1, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (34, 1, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (35, 11, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (36, 11, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (37, 11, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (38, 11, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (39, 12, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (40, 12, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (41, 12, 3);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (42, 12, 4);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (43, 12, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (44, 13, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (45, 13, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (46, 13, 5);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (47, 13, 6);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (48, 14, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (49, 14, 2);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (50, 15, 1);
INSERT INTO public.game_shop_app_game_languages (id, game_id, language_id) VALUES (51, 15, 2);


--
-- TOC entry 3581 (class 0 OID 20976)
-- Dependencies: 243
-- Data for Name: game_shop_app_game_platforms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (1, 1, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (2, 2, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (3, 3, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (4, 4, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (5, 4, 2);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (6, 4, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (7, 5, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (8, 5, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (9, 6, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (10, 6, 2);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (11, 6, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (12, 6, 4);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (13, 6, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (14, 7, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (15, 8, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (16, 8, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (17, 9, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (18, 9, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (19, 9, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (20, 10, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (21, 10, 2);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (22, 10, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (23, 10, 4);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (24, 10, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (25, 11, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (26, 11, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (27, 11, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (28, 12, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (29, 12, 2);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (30, 12, 3);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (31, 12, 5);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (32, 13, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (33, 14, 1);
INSERT INTO public.game_shop_app_game_platforms (id, game_id, platform_id) VALUES (34, 15, 1);


--
-- TOC entry 3585 (class 0 OID 21018)
-- Dependencies: 247
-- Data for Name: game_shop_app_gamescreenshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (1, 'Streggle s1', 'screenshots/streggle_s1.PNG', 'СКРИНШОТ №1', 1);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (2, 'Streggle s2', 'screenshots/streggle_s2.PNG', 'СКРИНШОТ №2', 1);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (3, 'Streggle s3', 'screenshots/streggle_s3.PNG', 'СКРИНШОТ №3', 1);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (4, 'Pizza Tower s1', 'screenshots/pizza_tower_s1.PNG', 'СКРИНШОТ №1', 2);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (5, 'Pizza Tower s2', 'screenshots/pizza_tower_s2.PNG', 'СКРИНШОТ №2', 2);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (6, 'Pizza Tower s3', 'screenshots/pizza_tower_s3.PNG', 'СКРИНШОТ №3', 2);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (7, 'Doom Eternal s1', 'screenshots/doom_eternal_s1.PNG', 'СКРИНШОТ №1', 4);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (8, 'Doom Eternal s2', 'screenshots/doom_eternal_s2.PNG', 'СКРИНШОТ №2', 4);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (9, 'Doom Eternal s3', 'screenshots/doom_eternal_s3.PNG', 'СКРИНШОТ №3', 4);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (10, 'Chess 2: The Sequel s1', 'screenshots/chess_2_the_sequel_s1.PNG', 'СКРИНШОТ №1', 7);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (11, 'Chess 2: The Sequel s2', 'screenshots/chess_2_the_sequel_s2.PNG', 'СКРИНШОТ №2', 7);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (12, 'Chess 2: The Sequel s3', 'screenshots/chess_2_the_sequel_s3.PNG', 'СКРИНШОТ №3', 7);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (13, 'The way of the damned s1', 'screenshots/the_way_of_the_damned_s1.PNG', 'СКРИНШОТ №1', 3);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (14, 'The way of the damned s2', 'screenshots/the_way_of_the_damned_s2.PNG', 'СКРИНШОТ №2', 3);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (15, 'The way of the damned s3', 'screenshots/the_way_of_the_damned_s3.PNG', 'СКРИНШОТ №3', 3);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (16, 'The Binding of Isaac: Repentance s1', 'screenshots/isaac_s1_u8rAAqK.PNG', 'СКРИНШОТ №1', 10);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (17, 'The Binding of Isaac: Repentance s2', 'screenshots/isaac_s2_Rwab9sZ.PNG', 'СКРИНШОТ №2', 10);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (18, 'The Binding of Isaac: Repentance s3', 'screenshots/isaac_s3_vgu2iSi.PNG', 'СКРИНШОТ №3', 10);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (19, 'Celeste s1', 'screenshots/celeste_s1.PNG', 'СКРИНШОТ №1', 5);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (20, 'Celeste s2', 'screenshots/celeste_s2.PNG', 'СКРИНШОТ №2', 5);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (21, 'Celeste s3', 'screenshots/celeste_s3.PNG', 'СКРИНШОТ №3', 5);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (22, 'Dead Cells s1', 'screenshots/dead_cells_s1.PNG', 'СКРИНШОТ №1', 6);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (23, 'Dead Cells s2', 'screenshots/dead_cells_s2.PNG', 'СКРИНШОТ №2', 6);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (24, 'Dead Cells s3', 'screenshots/dead_cells_s3.PNG', 'СКРИНШОТ №3', 6);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (25, 'Witcher 3: Wild hunt s1', 'screenshots/witcher_s1.PNG', 'СКРИНШОТ №1', 9);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (26, 'Witcher 3: Wild hunt s2', 'screenshots/witcher_s2.PNG', 'СКРИНШОТ №2', 9);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (27, 'Witcher 3: Wild hunt s3', 'screenshots/witcher_s3.PNG', 'СКРИНШОТ №3', 9);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (28, 'Horizon Zero Dawn s1', 'screenshots/horizon_zero_dawn_s1.PNG', 'СКРИНШОТ №1', 8);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (29, 'Horizon Zero Dawn s2', 'screenshots/horizon_zero_dawn_s2.PNG', 'СКРИНШОТ №2', 8);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (30, 'Horizon Zero Dawn s3', 'screenshots/horizon_zero_dawn_s3.PNG', 'СКРИНШОТ №3', 8);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (31, 'Hollow Knight s1', 'screenshots/hollow_knight_s1.PNG', 'СКРИНШОТ №1', 11);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (32, 'Hollow Knight s2', 'screenshots/hollow_knight_s2.PNG', 'СКРИНШОТ №2', 11);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (33, 'Hollow Knight s3', 'screenshots/hollow_knight_s3.PNG', 'СКРИНШОТ №3', 11);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (34, 'Rocket League s1', 'screenshots/rocket_league_s1.PNG', 'СКРИНШОТ №1', 12);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (35, 'Rocket League s2', 'screenshots/rocket_league_s2.PNG', 'СКРИНШОТ №2', 12);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (36, 'Rocket League s3', 'screenshots/rocket_league_s3.PNG', 'СКРИНШОТ №3', 12);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (37, 'Going Medieval s1', 'screenshots/going_medieval_s1.PNG', 'СКРИНШОТ №1', 13);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (38, 'Going Medieval s2', 'screenshots/going_medieval_s2.PNG', 'СКРИНШОТ №2', 13);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (39, 'Going Medieval s3', 'screenshots/going_medieval_s3.PNG', 'СКРИНШОТ №3', 13);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (40, 'Phasmophobia s1', 'screenshots/phasmophobia_s1.PNG', 'СКРИНШОТ №1', 14);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (41, 'Phasmophobia s2', 'screenshots/phasmophobia_s2.PNG', 'СКРИНШОТ №2', 14);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (42, 'Phasmophobia s3', 'screenshots/phasmophobia_s3.PNG', 'СКРИНШОТ №3', 14);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (43, 'Glass Masquerade 3: Honeylines s1', 'screenshots/glass_s1.PNG', 'СКРИНШОТ №1', 15);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (44, 'Glass Masquerade 3: Honeylines s2', 'screenshots/glass_s2.PNG', 'СКРИНШОТ №2', 15);
INSERT INTO public.game_shop_app_gamescreenshots (id, title, image, description, game_id) VALUES (45, 'Glass Masquerade 3: Honeylines s3', 'screenshots/glass_s3.PNG', 'СКРИНШОТ №3', 15);


--
-- TOC entry 3573 (class 0 OID 20854)
-- Dependencies: 235
-- Data for Name: game_shop_app_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (4, 'Драки', 'fighting');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (3, 'Кликеры', 'clicker');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (2, 'Приключение', 'adventure');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (1, 'Шутеры', 'shooter');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (5, 'Квесты', 'quest');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (6, 'Rogue-like', 'rogue-like');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (7, 'RPG', 'rpg');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (8, 'Экшн', 'action');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (9, 'Стратегии', 'strategy');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (10, 'Головоломки', 'puzzle');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (11, 'Спортивные', 'sport');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (12, 'Гонки', 'racing');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (13, 'Инди', 'indi');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (14, 'Симуляторы', 'simulator');
INSERT INTO public.game_shop_app_genre (id, genre_name, slug) VALUES (15, 'Хорроры', 'horror');


--
-- TOC entry 3588 (class 0 OID 21060)
-- Dependencies: 250
-- Data for Name: game_shop_app_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (7, 'Японский', 'japanese');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (6, 'Китайский', 'chinese');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (5, 'Французский', 'french');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (4, 'Немецкий', 'germany');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (3, 'Итальянский', 'italy');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (2, 'Английский', 'english');
INSERT INTO public.game_shop_app_language (id, language_name, slug) VALUES (1, 'Русский', 'russian');


--
-- TOC entry 3592 (class 0 OID 21100)
-- Dependencies: 254
-- Data for Name: game_shop_app_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_order (id, user_id, card, order_date, order_items, total_price, status, card_validity_period, cvv_code) VALUES (41, 1, '4127029920622742', '2023-06-15', '[{"id": 8, "type": "game", "quantity": 1}, {"id": 1, "type": "game", "quantity": 1}]', 1650, 'Обработан', '09/24', 589);
INSERT INTO public.game_shop_app_order (id, user_id, card, order_date, order_items, total_price, status, card_validity_period, cvv_code) VALUES (40, 1, '4127029920622742', '2023-06-15', '[{"id": 1, "type": "game", "quantity": 1}]', 250, 'Обработан', '09/24', 459);


--
-- TOC entry 3575 (class 0 OID 20861)
-- Dependencies: 237
-- Data for Name: game_shop_app_platform; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_platform (id, platform_name, slug) VALUES (5, 'Nintendo Switch', 'nintendo-switch');
INSERT INTO public.game_shop_app_platform (id, platform_name, slug) VALUES (4, 'PS5', 'ps5');
INSERT INTO public.game_shop_app_platform (id, platform_name, slug) VALUES (3, 'PS4', 'ps4');
INSERT INTO public.game_shop_app_platform (id, platform_name, slug) VALUES (2, 'XBOX ONE', 'xbox-one');
INSERT INTO public.game_shop_app_platform (id, platform_name, slug) VALUES (1, 'PC', 'pc');


--
-- TOC entry 3579 (class 0 OID 20900)
-- Dependencies: 241
-- Data for Name: game_shop_app_publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (9, 'Nicalis inc.', 'nicalis-inc');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (8, 'Andromeda', 'andromeda');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (7, 'Four Sigils', 'four-sigils');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (6, 'Cobolt', 'cobolt');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (5, 'Tour De Pizza', 'tour-de-pizza');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (4, 'Sleeping Games', 'sleeping-games');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (3, 'Super Zi Games', 'super-zi-games');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (2, 'Running Coffee', 'running-coffee');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (1, 'Red Sun', 'red-sun');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (10, 'Psyonix LLC', 'psyonix-llc');
INSERT INTO public.game_shop_app_publisher (id, publisher_name, slug) VALUES (11, 'The Irregular Corporation', 'the-irregular-corporation');


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 228
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 203, true);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 69, true);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 238
-- Name: game_shop_app_developer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_developer_id_seq', 11, true);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 244
-- Name: game_shop_app_game_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_game_genre_id_seq', 43, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 232
-- Name: game_shop_app_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_game_id_seq', 15, true);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 251
-- Name: game_shop_app_game_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_game_languages_id_seq', 51, true);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 242
-- Name: game_shop_app_game_platforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_game_platforms_id_seq', 34, true);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 246
-- Name: game_shop_app_gamescreenshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_gamescreenshots_id_seq', 45, true);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 234
-- Name: game_shop_app_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_genre_id_seq', 15, true);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 249
-- Name: game_shop_app_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_language_id_seq', 7, true);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 253
-- Name: game_shop_app_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_order_id_seq', 41, true);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 236
-- Name: game_shop_app_platform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_platform_id_seq', 5, true);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 240
-- Name: game_shop_app_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_shop_app_publisher_id_seq', 11, true);


--
-- TOC entry 3307 (class 2606 OID 20842)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3312 (class 2606 OID 20772)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3315 (class 2606 OID 20738)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 20729)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 20763)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3304 (class 2606 OID 20722)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 20754)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 20787)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3317 (class 2606 OID 20745)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3329 (class 2606 OID 20761)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 20801)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3320 (class 2606 OID 20837)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3335 (class 2606 OID 20823)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 20715)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3299 (class 2606 OID 20713)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 20706)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 21050)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3352 (class 2606 OID 20898)
-- Name: game_shop_app_developer game_shop_app_developer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_developer
    ADD CONSTRAINT game_shop_app_developer_pkey PRIMARY KEY (id);


--
-- TOC entry 3367 (class 2606 OID 21004)
-- Name: game_shop_app_game_genres game_shop_app_game_genre_game_id_genre_id_d1c0b155_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_genres
    ADD CONSTRAINT game_shop_app_game_genre_game_id_genre_id_d1c0b155_uniq UNIQUE (game_id, genre_id);


--
-- TOC entry 3370 (class 2606 OID 21002)
-- Name: game_shop_app_game_genres game_shop_app_game_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_genres
    ADD CONSTRAINT game_shop_app_game_genre_pkey PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 21074)
-- Name: game_shop_app_game_languages game_shop_app_game_languages_game_id_language_id_47f3cec0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_languages
    ADD CONSTRAINT game_shop_app_game_languages_game_id_language_id_47f3cec0_uniq UNIQUE (game_id, language_id);


--
-- TOC entry 3387 (class 2606 OID 21072)
-- Name: game_shop_app_game_languages game_shop_app_game_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_languages
    ADD CONSTRAINT game_shop_app_game_languages_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 20852)
-- Name: game_shop_app_game game_shop_app_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game
    ADD CONSTRAINT game_shop_app_game_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 20983)
-- Name: game_shop_app_game_platforms game_shop_app_game_platforms_game_id_platform_id_f6934f9d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_platforms
    ADD CONSTRAINT game_shop_app_game_platforms_game_id_platform_id_f6934f9d_uniq UNIQUE (game_id, platform_id);


--
-- TOC entry 3363 (class 2606 OID 20981)
-- Name: game_shop_app_game_platforms game_shop_app_game_platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_platforms
    ADD CONSTRAINT game_shop_app_game_platforms_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 21025)
-- Name: game_shop_app_gamescreenshots game_shop_app_gamescreenshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_gamescreenshots
    ADD CONSTRAINT game_shop_app_gamescreenshots_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 20859)
-- Name: game_shop_app_genre game_shop_app_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_genre
    ADD CONSTRAINT game_shop_app_genre_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 21065)
-- Name: game_shop_app_language game_shop_app_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_language
    ADD CONSTRAINT game_shop_app_language_pkey PRIMARY KEY (id);


--
-- TOC entry 3389 (class 2606 OID 21106)
-- Name: game_shop_app_order game_shop_app_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_order
    ADD CONSTRAINT game_shop_app_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 20866)
-- Name: game_shop_app_platform game_shop_app_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_platform
    ADD CONSTRAINT game_shop_app_platform_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 20905)
-- Name: game_shop_app_publisher game_shop_app_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_publisher
    ADD CONSTRAINT game_shop_app_publisher_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 1259 OID 20843)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3310 (class 1259 OID 20783)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3313 (class 1259 OID 20784)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3300 (class 1259 OID 20769)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3321 (class 1259 OID 20799)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3324 (class 1259 OID 20798)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3327 (class 1259 OID 20813)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3330 (class 1259 OID 20812)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3318 (class 1259 OID 20838)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3333 (class 1259 OID 20834)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3336 (class 1259 OID 20835)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3374 (class 1259 OID 21052)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3377 (class 1259 OID 21051)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3353 (class 1259 OID 21089)
-- Name: game_shop_app_developer_slug_b4e41cb2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_developer_slug_b4e41cb2 ON public.game_shop_app_developer USING btree (slug);


--
-- TOC entry 3354 (class 1259 OID 21090)
-- Name: game_shop_app_developer_slug_b4e41cb2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_developer_slug_b4e41cb2_like ON public.game_shop_app_developer USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3337 (class 1259 OID 20914)
-- Name: game_shop_app_game_developer_id_71e538f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_developer_id_71e538f7 ON public.game_shop_app_game USING btree (developer_id);


--
-- TOC entry 3365 (class 1259 OID 21015)
-- Name: game_shop_app_game_genre_game_id_2028eaac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_genre_game_id_2028eaac ON public.game_shop_app_game_genres USING btree (game_id);


--
-- TOC entry 3368 (class 1259 OID 21016)
-- Name: game_shop_app_game_genre_genre_id_abc5ff35; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_genre_genre_id_abc5ff35 ON public.game_shop_app_game_genres USING btree (genre_id);


--
-- TOC entry 3382 (class 1259 OID 21085)
-- Name: game_shop_app_game_languages_game_id_fec47428; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_languages_game_id_fec47428 ON public.game_shop_app_game_languages USING btree (game_id);


--
-- TOC entry 3385 (class 1259 OID 21086)
-- Name: game_shop_app_game_languages_language_id_7ad5b854; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_languages_language_id_7ad5b854 ON public.game_shop_app_game_languages USING btree (language_id);


--
-- TOC entry 3359 (class 1259 OID 20994)
-- Name: game_shop_app_game_platforms_game_id_1dd1da1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_platforms_game_id_1dd1da1d ON public.game_shop_app_game_platforms USING btree (game_id);


--
-- TOC entry 3364 (class 1259 OID 20995)
-- Name: game_shop_app_game_platforms_platform_id_c878dd2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_platforms_platform_id_c878dd2a ON public.game_shop_app_game_platforms USING btree (platform_id);


--
-- TOC entry 3340 (class 1259 OID 20929)
-- Name: game_shop_app_game_publisher_id_a896fd18; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_publisher_id_a896fd18 ON public.game_shop_app_game USING btree (publisher_id);


--
-- TOC entry 3341 (class 1259 OID 21091)
-- Name: game_shop_app_game_slug_d894e9b5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_slug_d894e9b5 ON public.game_shop_app_game USING btree (slug);


--
-- TOC entry 3342 (class 1259 OID 21092)
-- Name: game_shop_app_game_slug_d894e9b5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_game_slug_d894e9b5_like ON public.game_shop_app_game USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3371 (class 1259 OID 21033)
-- Name: game_shop_app_gamescreenshots_game_id_57dfe18f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_gamescreenshots_game_id_57dfe18f ON public.game_shop_app_gamescreenshots USING btree (game_id);


--
-- TOC entry 3345 (class 1259 OID 21087)
-- Name: game_shop_app_genre_slug_5b656f21; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_genre_slug_5b656f21 ON public.game_shop_app_genre USING btree (slug);


--
-- TOC entry 3346 (class 1259 OID 21088)
-- Name: game_shop_app_genre_slug_5b656f21_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_genre_slug_5b656f21_like ON public.game_shop_app_genre USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3380 (class 1259 OID 21093)
-- Name: game_shop_app_language_slug_82274958; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_language_slug_82274958 ON public.game_shop_app_language USING btree (slug);


--
-- TOC entry 3381 (class 1259 OID 21094)
-- Name: game_shop_app_language_slug_82274958_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_language_slug_82274958_like ON public.game_shop_app_language USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3390 (class 1259 OID 21173)
-- Name: game_shop_app_order_user_id_4a07ebe2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_order_user_id_4a07ebe2 ON public.game_shop_app_order USING btree (user_id);


--
-- TOC entry 3349 (class 1259 OID 21095)
-- Name: game_shop_app_platform_slug_b8b04011; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_platform_slug_b8b04011 ON public.game_shop_app_platform USING btree (slug);


--
-- TOC entry 3350 (class 1259 OID 21096)
-- Name: game_shop_app_platform_slug_b8b04011_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_platform_slug_b8b04011_like ON public.game_shop_app_platform USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3357 (class 1259 OID 21097)
-- Name: game_shop_app_publisher_slug_bc030a5a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_publisher_slug_bc030a5a ON public.game_shop_app_publisher USING btree (slug);


--
-- TOC entry 3358 (class 1259 OID 21098)
-- Name: game_shop_app_publisher_slug_bc030a5a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX game_shop_app_publisher_slug_bc030a5a_like ON public.game_shop_app_publisher USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3392 (class 2606 OID 20778)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3393 (class 2606 OID 20773)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3391 (class 2606 OID 20764)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3394 (class 2606 OID 20793)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3395 (class 2606 OID 20788)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3396 (class 2606 OID 20807)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3397 (class 2606 OID 20802)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3398 (class 2606 OID 20824)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3399 (class 2606 OID 20829)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3400 (class 2606 OID 20915)
-- Name: game_shop_app_game game_shop_app_game_developer_id_71e538f7_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game
    ADD CONSTRAINT game_shop_app_game_developer_id_71e538f7_fk_game_shop FOREIGN KEY (developer_id) REFERENCES public.game_shop_app_developer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3404 (class 2606 OID 21005)
-- Name: game_shop_app_game_genres game_shop_app_game_g_game_id_2028eaac_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_genres
    ADD CONSTRAINT game_shop_app_game_g_game_id_2028eaac_fk_game_shop FOREIGN KEY (game_id) REFERENCES public.game_shop_app_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3405 (class 2606 OID 21010)
-- Name: game_shop_app_game_genres game_shop_app_game_g_genre_id_abc5ff35_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_genres
    ADD CONSTRAINT game_shop_app_game_g_genre_id_abc5ff35_fk_game_shop FOREIGN KEY (genre_id) REFERENCES public.game_shop_app_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3407 (class 2606 OID 21075)
-- Name: game_shop_app_game_languages game_shop_app_game_l_game_id_fec47428_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_languages
    ADD CONSTRAINT game_shop_app_game_l_game_id_fec47428_fk_game_shop FOREIGN KEY (game_id) REFERENCES public.game_shop_app_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3408 (class 2606 OID 21080)
-- Name: game_shop_app_game_languages game_shop_app_game_l_language_id_7ad5b854_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_languages
    ADD CONSTRAINT game_shop_app_game_l_language_id_7ad5b854_fk_game_shop FOREIGN KEY (language_id) REFERENCES public.game_shop_app_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3402 (class 2606 OID 21054)
-- Name: game_shop_app_game_platforms game_shop_app_game_l_platform_id_7be458cf_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_platforms
    ADD CONSTRAINT game_shop_app_game_l_platform_id_7be458cf_fk_game_shop FOREIGN KEY (platform_id) REFERENCES public.game_shop_app_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3403 (class 2606 OID 20984)
-- Name: game_shop_app_game_platforms game_shop_app_game_p_game_id_1dd1da1d_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game_platforms
    ADD CONSTRAINT game_shop_app_game_p_game_id_1dd1da1d_fk_game_shop FOREIGN KEY (game_id) REFERENCES public.game_shop_app_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3401 (class 2606 OID 20930)
-- Name: game_shop_app_game game_shop_app_game_publisher_id_a896fd18_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_game
    ADD CONSTRAINT game_shop_app_game_publisher_id_a896fd18_fk_game_shop FOREIGN KEY (publisher_id) REFERENCES public.game_shop_app_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3406 (class 2606 OID 21034)
-- Name: game_shop_app_gamescreenshots game_shop_app_gamesc_game_id_57dfe18f_fk_game_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_gamescreenshots
    ADD CONSTRAINT game_shop_app_gamesc_game_id_57dfe18f_fk_game_shop FOREIGN KEY (game_id) REFERENCES public.game_shop_app_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3409 (class 2606 OID 21182)
-- Name: game_shop_app_order game_shop_app_order_user_id_4a07ebe2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_shop_app_order
    ADD CONSTRAINT game_shop_app_order_user_id_4a07ebe2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-06-16 00:14:08

--
-- PostgreSQL database dump complete
--

