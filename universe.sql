--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean NOT NULL,
    age_in_billions integer,
    distance_in_year_light numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_water boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: oceanos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.oceanos (
    oceanos_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    "litros_bilhões" integer
);


ALTER TABLE public.oceanos OWNER TO freecodecamp;

--
-- Name: oceanos_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.oceanos_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oceanos_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: oceanos_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.oceanos_ocean_id_seq OWNED BY public.oceanos.oceanos_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    random_number numeric,
    star_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    age_in_million numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: oceanos oceanos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceanos ALTER COLUMN oceanos_id SET DEFAULT nextval('public.oceanos_ocean_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via_lactea', true, 16000, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 10000, 2);
INSERT INTO public.galaxy VALUES (3, 'Galaxia do triangulo', false, NULL, 2700000);
INSERT INTO public.galaxy VALUES (4, 'Nuvens de Magalhões', false, NULL, 160000);
INSERT INTO public.galaxy VALUES (5, 'sal1', true, NULL, 213);
INSERT INTO public.galaxy VALUES (6, 'abobrinha', false, NULL, 124);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 'foda pkrl', true, 1);
INSERT INTO public.moon VALUES (2, 'SLA', 'raiva', true, 10);
INSERT INTO public.moon VALUES (3, 'Europa', 'deve ter tido vida', true, 10);
INSERT INTO public.moon VALUES (4, 'lo', 'terceira maior lua de um conjunto la', false, 10);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'também conhecida como jupiter 3', false, 10);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Outro nome ela tem', false, 10);
INSERT INTO public.moon VALUES (7, 'Jupiter LXI', 'parece um mini jupiter', true, 10);
INSERT INTO public.moon VALUES (8, 'Kallichore', 'descoberta em 2003, demorou', true, 10);
INSERT INTO public.moon VALUES (9, 'lo2', 'terceira maior lua de um conjunto la', false, 10);
INSERT INTO public.moon VALUES (10, 'Ganymede2', 'também conhecida como jupiter 3', false, 10);
INSERT INTO public.moon VALUES (11, 'Callisto2', 'Outro nome ela tem', false, 10);
INSERT INTO public.moon VALUES (12, 'Jupiter LXI2', 'parece um mini jupiter', true, 10);
INSERT INTO public.moon VALUES (13, 'Kallic2', 'descoberta em 2003, demorou', true, 10);
INSERT INTO public.moon VALUES (14, 'lo3', 'terceira maior lua de um conjunto la', false, 10);
INSERT INTO public.moon VALUES (15, 'Ganymede3', 'também conhecida como jupiter 3', false, 10);
INSERT INTO public.moon VALUES (16, 'Callisto3', 'Outro nome ela tem', false, 10);
INSERT INTO public.moon VALUES (17, 'Jupiter LXI3', 'parece um mini jupiter', true, 10);
INSERT INTO public.moon VALUES (18, 'Kallic3', 'descoberta em 2003, demorou', true, 10);
INSERT INTO public.moon VALUES (19, 'lo4', 'terceira maior lua de um conjunto la', false, 10);
INSERT INTO public.moon VALUES (20, 'Ganymede4', 'também conhecida como jupiter 3', false, 10);
INSERT INTO public.moon VALUES (21, 'Callisto4', 'Outro nome ela tem', false, 10);
INSERT INTO public.moon VALUES (22, 'Jupiter LXI4', 'parece um mini jupiter', true, 10);
INSERT INTO public.moon VALUES (23, 'Kallic4', 'descoberta em 2003, demorou', true, 10);
INSERT INTO public.moon VALUES (24, '2lo4', 'terceira maior lua de um conjunto la', false, 10);
INSERT INTO public.moon VALUES (25, 'G2anymede4', 'também conhecida como jupiter 3', false, 10);
INSERT INTO public.moon VALUES (26, 'Cal2listo4', 'Outro nome ela tem', false, 10);
INSERT INTO public.moon VALUES (27, 'Jupiter2 LXI4', 'parece um mini jupiter', true, 10);
INSERT INTO public.moon VALUES (28, 'Kallic24', 'descoberta em 2003, demorou', true, 10);


--
-- Data for Name: oceanos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.oceanos VALUES (1, 'indico', 1, NULL);
INSERT INTO public.oceanos VALUES (2, 'atlantico', 1, NULL);
INSERT INTO public.oceanos VALUES (3, 'pacifico', 1, NULL);
INSERT INTO public.oceanos VALUES (4, 'glacial artico', 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 0, 1, true, false);
INSERT INTO public.planet VALUES (2, 'Mercurio', 142.72, 1, false, false);
INSERT INTO public.planet VALUES (3, 'Venus', 69.46, 1, false, false);
INSERT INTO public.planet VALUES (4, 'Marte', 377.2, 1, true, false);
INSERT INTO public.planet VALUES (5, 'Tau Ceti B', 110000.9, 2, false, false);
INSERT INTO public.planet VALUES (6, 'Tau Ceti C', 110000.9, 2, false, false);
INSERT INTO public.planet VALUES (7, 'HD 10180 B', 123, 3, false, false);
INSERT INTO public.planet VALUES (8, 'HD 10180 C', 124, 3, false, false);
INSERT INTO public.planet VALUES (9, 'HD 10180 D', 143, 3, false, false);
INSERT INTO public.planet VALUES (10, 'Jupiter', 124, 1, false, false);
INSERT INTO public.planet VALUES (11, 'Sartuno', 34.4, 1, false, false);
INSERT INTO public.planet VALUES (12, 'Netuno', 124.2, 1, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 0, 1, 4000);
INSERT INTO public.star VALUES (2, 'Tau Ceti', 11.9, 1, NULL);
INSERT INTO public.star VALUES (3, 'HD 10180', 127, 1, NULL);
INSERT INTO public.star VALUES (4, 'sol longe', 121313.2, 2, NULL);
INSERT INTO public.star VALUES (5, 'sol longe2', 123434.23, 2, NULL);
INSERT INTO public.star VALUES (6, 'ultimo', 124224.213, 3, NULL);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: oceanos_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.oceanos_ocean_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: oceanos oceanos_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceanos
    ADD CONSTRAINT oceanos_name_key UNIQUE (name);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: oceanos pk_oceanos; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceanos
    ADD CONSTRAINT pk_oceanos PRIMARY KEY (oceanos_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: oceanos fk_oceano; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceanos
    ADD CONSTRAINT fk_oceano FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

