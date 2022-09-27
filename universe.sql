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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric NOT NULL,
    liveable boolean
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric NOT NULL,
    discovered_by text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric NOT NULL,
    liveable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric NOT NULL,
    liveable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric NOT NULL,
    discovered_by text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Scorpios', 155, 155, false);
INSERT INTO public.constelation VALUES (2, 'Cancer', 135, 134, false);
INSERT INTO public.constelation VALUES (3, 'Aries', 138, 104, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100, 110, 'Milton');
INSERT INTO public.galaxy VALUES (2, 'Milky way', 101, 111, 'Friedman');
INSERT INTO public.galaxy VALUES (3, 'Antenae', 101, 111, 'Fred');
INSERT INTO public.galaxy VALUES (4, 'Backward', 121, 121, 'Hayek');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 131, 131, 'Ludwing');
INSERT INTO public.galaxy VALUES (6, 'Bode', 156, 124, 'Von');
INSERT INTO public.galaxy VALUES (8, 'Cigar', 159, 125, 'Mises');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Deimos', 12, 44, false, 4);
INSERT INTO public.moon VALUES (5, 'Lo', 13, 45, false, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 13, 45, false, 5);
INSERT INTO public.moon VALUES (7, 'calisto', 13, 45, false, 5);
INSERT INTO public.moon VALUES (8, 'Almateia', 13, 45, false, 5);
INSERT INTO public.moon VALUES (9, 'Ganimedes', 13, 45, false, 5);
INSERT INTO public.moon VALUES (10, 'Himalaia', 13, 45, false, 5);
INSERT INTO public.moon VALUES (11, 'Elaia', 13, 45, false, 5);
INSERT INTO public.moon VALUES (12, 'Pasife', 13, 45, false, 5);
INSERT INTO public.moon VALUES (13, 'Sinope', 13, 45, false, 5);
INSERT INTO public.moon VALUES (14, 'Listeia', 13, 45, false, 5);
INSERT INTO public.moon VALUES (15, 'Carme', 13, 45, false, 5);
INSERT INTO public.moon VALUES (16, 'Aleda', 13, 45, false, 5);
INSERT INTO public.moon VALUES (17, 'Ananke', 13, 45, false, 5);
INSERT INTO public.moon VALUES (18, 'Tebe', 13, 45, false, 5);
INSERT INTO public.moon VALUES (19, 'Andrasteia', 13, 45, false, 5);
INSERT INTO public.moon VALUES (20, 'Metis', 13, 45, false, 5);
INSERT INTO public.moon VALUES (1, 'Lua', 21, 394, false, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 12, 34, false, 4);
INSERT INTO public.moon VALUES (4, 'Temisto', 13, 45, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 10, 383, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 11, 384, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 12, 385, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 13, 386, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 14, 387, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', 15, 388, false, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', 16, 389, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 17, 390, false, NULL);
INSERT INTO public.planet VALUES (9, 'Ceres', 18, 391, false, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 19, 392, false, NULL);
INSERT INTO public.planet VALUES (11, 'Orcus', 20, 393, false, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', 21, 394, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Cirus', 159, 125, 'Mises', 2);
INSERT INTO public.star VALUES (2, 'Vega', 179, 165, 'von', 2);
INSERT INTO public.star VALUES (3, 'Capella', 180, 145, 'Ludwing', 2);
INSERT INTO public.star VALUES (4, 'Rigel', 185, 135, 'Fred', 2);
INSERT INTO public.star VALUES (5, 'Altair', 184, 145, 'Hayek', 2);
INSERT INTO public.star VALUES (6, 'Spica', 155, 155, 'Friedman', 2);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


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
-- PostgreSQL database dump complete
--

