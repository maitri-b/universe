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
-- Name: discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discoverer (
    discoverer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sex character varying(1),
    nationality character varying(20),
    email character varying(30)
);


ALTER TABLE public.discoverer OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discoverer_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discoverer_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discoverer_discoverer_id_seq OWNED BY public.discoverer.discoverer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_star character varying(30),
    radius_lightyear integer,
    age character varying(30)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    year_of_discovered character varying(100),
    date_of_discovered date,
    full_date boolean
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
    radius_km integer,
    gravity numeric,
    info text,
    moon_satellite boolean,
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
    galaxy_id integer,
    radius_km integer,
    age character varying(30)
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
-- Name: discoverer discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer ALTER COLUMN discoverer_id SET DEFAULT nextval('public.discoverer_discoverer_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discoverer VALUES (1, 'Scott S. Sheppard', 'm', 'usa', 'sheppardQdtm.ciw.edu');
INSERT INTO public.discoverer VALUES (2, 'David C. Jewitt', 'm', 'USA', 'jewitt@ucla.edu');
INSERT INTO public.discoverer VALUES (3, 'Yanga R. Ferdinandez', 'm', 'USA', 'yan@ifa.hawaii.edu');
INSERT INTO public.discoverer VALUES (4, 'Eugene Magnier', 'm', 'USA', 'eugene@ifa.hawaii.edu');
INSERT INTO public.discoverer VALUES (5, 'William Lassell', 'm', 'USA', NULL);
INSERT INTO public.discoverer VALUES (7, 'B. Gladman', 'm', 'USA', NULL);
INSERT INTO public.discoverer VALUES (8, 'P. Nicholson', 'm', 'USA', NULL);
INSERT INTO public.discoverer VALUES (9, 'J. A. Burns', 'm', 'USA', NULL);
INSERT INTO public.discoverer VALUES (10, 'J. Kavelaars', 'm', 'USA', NULL);
INSERT INTO public.discoverer VALUES (11, 'Voyager Science Team', '', '', NULL);
INSERT INTO public.discoverer VALUES (6, 'Voyager2', '', '', NULL);
INSERT INTO public.discoverer VALUES (12, 'J.J. Lissauer', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (13, 'Vogayer2 Science Team', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (14, 'Dan Milisavljevic', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (15, 'Matthew J. Holman', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (16, 'Brett J. Gladman', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (17, 'Tommy Grav', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (18, 'Gerard P. Kuiper', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (19, 'W. Herschel', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (20, 'R. Terrile', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (21, 'Erich Karkoschka', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (22, 'Known by the Ancients', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (23, 'A. Hall', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (24, 'S. Synnott', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (25, 'Wesley C. Fraser', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (26, 'M. Showalter et al', NULL, NULL, NULL);
INSERT INTO public.discoverer VALUES (27, 'M.R. Showalter', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', '100 Billion', 52850, '13.61 billion years');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', '1 Trillion', 110000, '10.01 Billion yers');
INSERT INTO public.galaxy VALUES (5, 'Messier 81', '250 billion', 45000, '13.31 Billion years');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', '7 Billion', 3500, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', '30 Billion', 7000, '1.10 Billion years');
INSERT INTO public.galaxy VALUES (6, 'Antennae', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Ariel', 7, '', '1986-10-24', true);
INSERT INTO public.moon VALUES (3, 'Bianca', 7, '', '1986-01-23', true);
INSERT INTO public.moon VALUES (4, 'Caliban', 7, '', '1997-09-06', true);
INSERT INTO public.moon VALUES (5, 'Cordelia', 7, '', '1986-01-20', true);
INSERT INTO public.moon VALUES (6, 'Cressida', 7, '', '1986-01-09', true);
INSERT INTO public.moon VALUES (7, 'Cupid', 7, '', '2003-08-25', true);
INSERT INTO public.moon VALUES (8, 'Desdemona', 7, '', '1986-01-13', true);
INSERT INTO public.moon VALUES (9, 'Ferdinand', 7, '', '2001-08-13', true);
INSERT INTO public.moon VALUES (10, 'Francisco', 7, '', '2001-08-13', true);
INSERT INTO public.moon VALUES (11, 'Julite', 7, '', '1986-01-03', true);
INSERT INTO public.moon VALUES (12, 'Mab', 7, '', '2003-08-25', true);
INSERT INTO public.moon VALUES (13, 'Margaret', 7, '', '2003-08-29', true);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, '', '1984-02-16', true);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, '', '1904-11-21', true);
INSERT INTO public.moon VALUES (16, 'Ophelia', 7, '1787', NULL, false);
INSERT INTO public.moon VALUES (17, 'Perdita', 7, '', '1999-05-18', true);
INSERT INTO public.moon VALUES (18, 'Deimos', 3, '1877', NULL, false);
INSERT INTO public.moon VALUES (19, 'Phobos', 3, '1877', NULL, false);
INSERT INTO public.moon VALUES (20, 'Despina', 8, '1989', NULL, false);
INSERT INTO public.moon VALUES (21, 'Galatea', 8, '1989', NULL, false);
INSERT INTO public.moon VALUES (22, 'Halimeda', 8, '', '2002-08-14', true);
INSERT INTO public.moon VALUES (23, 'Hippocamp', 8, '', '1986-10-24', true);
INSERT INTO public.moon VALUES (24, 'Laodemeia', 8, '', '1986-10-25', true);
INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Unknown', NULL, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 6371, 9.8, 'Our home planet is the third planet from the sun', true, 1);
INSERT INTO public.planet VALUES (2, 'mercury', 2439, 3.7, 'The smallest planet in our solar system and nearest to the sun', false, 1);
INSERT INTO public.planet VALUES (3, 'mars', 3389, 3.71, 'mar is the forth planet to the sun', true, 1);
INSERT INTO public.planet VALUES (4, 'jupiter', 69911, 24.79, 'Jupiter is the largest planet in our solar system', true, 1);
INSERT INTO public.planet VALUES (5, 'saturn', 58232, 10.4, 'Saturn is the sixth planet to the sun and the second-largest planet in our solar system', true, 1);
INSERT INTO public.planet VALUES (6, 'Venus', 6051, 8.87, 'Venus is the second planet from the Sun and is Earth''s closet planetary neighbor', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 25361, 8.87, 'Uranus is the Seventh planet from the Sun and has the third largest planet in our solar system', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 11.15, 'More than 30 times as far from the sun as Earth. Neptune is the only one planet in our solar system not visible to our naked eyes.', true, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 1151, 0.66, 'pluto is a dwarf planet in the kuiper belt, the donut-shaped of ice bodies beyond the orbid of Neptune', true, 1);
INSERT INTO public.planet VALUES (11, 'Ceres', 476, 0.28, 'Dwarf planet Ceres is the largest object in the astoroid belt between Mars and Jupiter', false, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 1150, 0, 'Eris is the largest dwarf planet in our solar system', false, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 1150, 0, 'Haumea is located in the kuiper belt, the donut-shaped of ice bodies beyond the orbid of Neptune', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1, 696342, '4.6 Billion years');
INSERT INTO public.star VALUES (3, 'Alpheratz', 2, 350000, '70 Billion Years');
INSERT INTO public.star VALUES (4, 'AD Leonis', 1, 271000, '');
INSERT INTO public.star VALUES (5, 'Gliese 832', 1, 334000, NULL);
INSERT INTO public.star VALUES (6, 'Stein 2051', 1, 203200, NULL);
INSERT INTO public.star VALUES (7, 'Ross 47', NULL, NULL, NULL);


--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discoverer_discoverer_id_seq', 27, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: discoverer discoverer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_name_key UNIQUE (name);


--
-- Name: discoverer discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_pkey PRIMARY KEY (discoverer_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

