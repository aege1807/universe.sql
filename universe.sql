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
    galaxy_name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    size_in_miles numeric,
    name character varying(30)
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
    moon_name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    is_spherical boolean,
    description text,
    size_in_miles numeric,
    planet_id integer NOT NULL,
    name character varying(30)
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
    planet_name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    size_in_miles numeric,
    star_id integer NOT NULL,
    name character varying(30)
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
    star_name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    size_in_miles numeric,
    galaxy_id integer NOT NULL,
    name character varying(30)
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
-- Name: trajectory; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.trajectory (
    trajectory character varying(30) NOT NULL,
    trajectory_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.trajectory OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000, 13000, 'The Milky Way is the galaxy that contains our Solar System', 1000000, 'Galaxy 1');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2500000, 12000, 'The Andromeda Galaxy is a barred spiral galaxy', 1200000, 'Galaxy 2');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 8000, 'The Triangulum Galaxy is a spiral galaxy', 800000, 'Galaxy 3');
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 5000000, 10000, 'Messier 81 is a spiral galaxy in the constellation Ursa Major', 900000, 'Galaxy 4');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 4000000, 11000, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy', 950000, 'Galaxy 5');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 6000000, 9000, 'The Sombrero Galaxy is a spiral galaxy', 850000, 'Galaxy 6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, 4500, true, 'The Moon is Earth''s only natural satellite', 2159, 3, 'Moon 1');
INSERT INTO public.moon VALUES (2, 'Phobos', 0, 4500, true, 'Phobos is the larger and closer of the two natural satellites of Mars', 14, 4, 'Moon 2');
INSERT INTO public.moon VALUES (3, 'Deimos', 0, 4500, true, 'Deimos is the smaller and more distant of the two natural satellites of Mars', 7, 4, 'Moon 3');
INSERT INTO public.moon VALUES (4, 'Europa', 0, 4500, true, 'Europa is the smallest of the four Galilean moons orbiting Jupiter', 1940, 5, 'Moon 4');
INSERT INTO public.moon VALUES (5, 'Ganymede', 0, 4500, true, 'Ganymede is the largest moon of Jupiter', 3270, 5, 'Moon 5');
INSERT INTO public.moon VALUES (6, 'Io', 0, 4500, true, 'Io is the innermost of the four Galilean moons of Jupiter', 2262, 5, 'Moon 6');
INSERT INTO public.moon VALUES (7, 'Callisto', 0, 4500, true, 'Callisto is the second-largest moon of Jupiter', 2997, 5, 'Moon 7');
INSERT INTO public.moon VALUES (8, 'Titan', 0, 4500, true, 'Titan is the largest moon of Saturn', 3200, 6, 'Moon 8');
INSERT INTO public.moon VALUES (9, 'Enceladus', 0, 4500, true, 'Enceladus is the sixth-largest moon of Saturn', 313, 6, 'Moon 9');
INSERT INTO public.moon VALUES (10, 'Triton', 0, 4500, true, 'Triton is the largest natural satellite of Neptune', 1680, 8, 'Moon 10');
INSERT INTO public.moon VALUES (11, 'Nereid', 0, 4500, true, 'Nereid is the third-largest moon of Neptune', 142, 8, 'Moon 11');
INSERT INTO public.moon VALUES (12, 'Oberon', 0, 4500, true, 'Oberon is the outermost major moon of Uranus', 958, 7, 'Moon 12');
INSERT INTO public.moon VALUES (13, 'Titania', 0, 4500, true, 'Titania is the largest moon of Uranus', 989, 7, 'Moon 13');
INSERT INTO public.moon VALUES (14, 'Miranda', 0, 4500, true, 'Miranda is the smallest and innermost of Uranus''s five round satellites', 293, 7, 'Moon 14');
INSERT INTO public.moon VALUES (15, 'Charon', 0, 4500, true, 'Charon is the largest satellite of Pluto', 751, 9, 'Moon 15');
INSERT INTO public.moon VALUES (16, 'Exomoon 1', 0, 4500, true, 'Exomoon 1 is an exomoon', 1234, 10, 'Moon 16');
INSERT INTO public.moon VALUES (17, 'Exomoon 2', 0, 4500, true, 'Exomoon 2 is an exomoon', 1345, 10, 'Moon 17');
INSERT INTO public.moon VALUES (18, 'Exomoon 3', 0, 4500, true, 'Exomoon 3 is an exomoon', 1456, 10, 'Moon 18');
INSERT INTO public.moon VALUES (19, 'Exomoon 4', 0, 4500, true, 'Exomoon 4 is an exomoon', 1567, 11, 'Moon 19');
INSERT INTO public.moon VALUES (20, 'Exomoon 5', 0, 4500, true, 'Exomoon 5 is an exomoon', 1678, 11, 'Moon 20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 36, 4500, false, true, 'Mercury is the smallest planet in the Solar System', 3031, 1, 'Planet 1');
INSERT INTO public.planet VALUES (2, 'Venus', 67, 4500, false, true, 'Venus is the second planet from the Sun', 7521, 1, 'Planet 2');
INSERT INTO public.planet VALUES (3, 'Earth', 0, 4500, true, true, 'Earth is the third planet from the Sun', 7917, 1, 'Planet 3');
INSERT INTO public.planet VALUES (4, 'Mars', 140, 4500, false, true, 'Mars is the fourth planet from the Sun', 4212, 1, 'Planet 4');
INSERT INTO public.planet VALUES (5, 'Jupiter', 484, 4500, false, true, 'Jupiter is the largest planet in the Solar System', 86881, 1, 'Planet 5');
INSERT INTO public.planet VALUES (6, 'Saturn', 884, 4500, false, true, 'Saturn is the sixth planet from the Sun', 72367, 1, 'Planet 6');
INSERT INTO public.planet VALUES (7, 'Uranus', 1782, 4500, false, true, 'Uranus is the seventh planet from the Sun', 31518, 1, 'Planet 7');
INSERT INTO public.planet VALUES (8, 'Neptune', 2793, 4500, false, true, 'Neptune is the eighth planet from the Sun', 30599, 1, 'Planet 8');
INSERT INTO public.planet VALUES (9, 'Proxima b', 4, 5000, NULL, true, 'Proxima b is a rocky exoplanet', 47131, 5, 'Planet 9');
INSERT INTO public.planet VALUES (10, 'Exoplanet 1', 4, 5000, NULL, true, 'Exoplanet 1 is an exoplanet', 35632, 5, 'Planet 10');
INSERT INTO public.planet VALUES (11, 'Exoplanet 2', 4, 5000, NULL, true, 'Exoplanet 2 is an exoplanet', 26734, 5, 'Planet 11');
INSERT INTO public.planet VALUES (12, 'Exoplanet 3', 4, 5000, NULL, true, 'Exoplanet 3 is an exoplanet', 19822, 5, 'Planet 12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4500, 'The Sun is the star at the center of the Solar System', 865000, 1, 'Star 1');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4, 6000, 'Alpha Centauri is a binary star system', 1110000, 1, 'Star 2');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 643, 8000, 'Betelgeuse is a red supergiant star', 2000000, 2, 'Star 3');
INSERT INTO public.star VALUES (4, 'Sirius', 9, 250, 'Sirius is a binary star system', 2000000, 2, 'Star 4');
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4, 5000, 'Proxima Centauri is a red dwarf star', 200000, 2, 'Star 5');
INSERT INTO public.star VALUES (6, 'Polaris', 323, 7000, 'Polaris is a yellow-white supergiant star', 1600000, 3, 'Star 6');


--
-- Data for Name: trajectory; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.trajectory VALUES ('Trajectory 1', 1, 'Name 1');
INSERT INTO public.trajectory VALUES ('Trajectory 2', 2, 'Name 2');
INSERT INTO public.trajectory VALUES ('Trajectory 3', 3, 'Name 3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: trajectory trajectory_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trajectory
    ADD CONSTRAINT trajectory_pkey PRIMARY KEY (trajectory_id);


--
-- Name: trajectory trajectory_trajectory_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trajectory
    ADD CONSTRAINT trajectory_trajectory_key UNIQUE (trajectory);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (galaxy_name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (moon_name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (planet_name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (star_name);


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

