--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: info_plus; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info_plus (
    info_plus_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    level integer
);


ALTER TABLE public.info_plus OWNER TO freecodecamp;

--
-- Name: info_plus_info_plus_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_plus_info_plus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_plus_info_plus_id_seq OWNER TO freecodecamp;

--
-- Name: info_plus_info_plus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_plus_info_plus_id_seq OWNED BY public.info_plus.info_plus_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    moon_id integer NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    planet_id integer NOT NULL,
    galaxy_id integer NOT NULL
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: info_plus info_plus_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_plus ALTER COLUMN info_plus_id SET DEFAULT nextval('public.info_plus_info_plus_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 500, 750, 1500.75, 'solid', true, true, 7);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 500, 750, 1500.75, 'solid', true, true, 8);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 500, 750, 1500.75, 'solid', true, true, 9);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 500, 750, 1500.75, 'solid', true, true, 10);
INSERT INTO public.galaxy VALUES (6, 'galaxy7', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 500, 750, 1500.75, 'solid', true, true, 7);


--
-- Data for Name: info_plus; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info_plus VALUES (1, 'info1', 'description supplémentaire', 1);
INSERT INTO public.info_plus VALUES (2, 'info3', 'description supplémentaire', 4);
INSERT INTO public.info_plus VALUES (3, 'info4', 'description supplémentaire', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (2, 'moon2', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (3, 'moon3', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (4, 'moon4', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (5, 'moon5', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (6, 'moon6', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (8, 'moo8', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (9, 'moon9', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (10, 'moon10', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (11, 'moon11', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (12, 'moon12', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (13, 'moo13', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (14, 'moon14', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (15, 'moon15', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (16, 'moon16', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (17, 'moon17', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (18, 'moo18', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 500, 750, 1500.75, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (20, 'moon20', 500, 750, 1500.75, 'solid', true, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (6, 'planet1', 500, 750, 1500.75, 'solid', true, true, 1, 6);
INSERT INTO public.planet VALUES (7, 'planet2', 500, 750, 1500.75, 'solid', true, true, 2, 6);
INSERT INTO public.planet VALUES (8, 'planet3', 500, 750, 1500.75, 'solid', true, true, 3, 6);
INSERT INTO public.planet VALUES (9, 'planet4', 500, 750, 1500.75, 'solid', true, true, 4, 6);
INSERT INTO public.planet VALUES (10, 'planet5', 500, 750, 1500.75, 'solid', true, true, 5, 6);
INSERT INTO public.planet VALUES (11, 'planet6', 500, 750, 1500.75, 'solid', true, true, 6, 6);
INSERT INTO public.planet VALUES (12, 'planet7', 500, 750, 1500.75, 'solid', true, true, 7, 6);
INSERT INTO public.planet VALUES (13, 'planet8', 500, 750, 1500.75, 'solid', true, true, 8, 6);
INSERT INTO public.planet VALUES (14, 'planet9', 500, 750, 1500.75, 'solid', true, true, 9, 6);
INSERT INTO public.planet VALUES (15, 'planet10', 500, 750, 1500.75, 'solid', true, true, 10, 6);
INSERT INTO public.planet VALUES (16, 'planet11', 500, 750, 1500.75, 'solid', true, true, 11, 6);
INSERT INTO public.planet VALUES (17, 'planet12', 500, 750, 1500.75, 'solid', true, true, 12, 6);
INSERT INTO public.planet VALUES (18, 'planet13', 500, 750, 1500.75, 'solid', true, true, 13, 6);
INSERT INTO public.planet VALUES (19, 'planet14', 500, 750, 1500.75, 'solid', true, true, 14, 6);
INSERT INTO public.planet VALUES (20, 'planet15', 500, 750, 1500.75, 'solid', true, true, 15, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'star1', 500, 750, 1500.75, 'solid', true, true, 6, 1);
INSERT INTO public.star VALUES (7, 'star2', 500, 750, 1500.75, 'solid', true, true, 7, 1);
INSERT INTO public.star VALUES (8, 'star3', 500, 750, 1500.75, 'solid', true, true, 8, 1);
INSERT INTO public.star VALUES (9, 'star4', 500, 750, 1500.75, 'solid', true, true, 9, 1);
INSERT INTO public.star VALUES (10, 'star5', 500, 750, 1500.75, 'solid', true, true, 10, 1);
INSERT INTO public.star VALUES (11, 'star16', 500, 750, 1500.75, 'solid', true, true, 13, 1);
INSERT INTO public.star VALUES (12, 'star8', 500, 750, 1500.75, 'solid', true, true, 15, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: info_plus_info_plus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_plus_info_plus_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info_plus info_plus_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_plus
    ADD CONSTRAINT info_plus_name_key UNIQUE (name);


--
-- Name: info_plus info_plus_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_plus
    ADD CONSTRAINT info_plus_pkey PRIMARY KEY (info_plus_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

