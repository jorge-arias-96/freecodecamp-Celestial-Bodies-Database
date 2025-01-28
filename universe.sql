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
-- Name: fictial_moons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fictial_moons (
    fictial_moons_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.fictial_moons OWNER TO freecodecamp;

--
-- Name: fictial_moons_fictial_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fictial_moons_fictial_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fictial_moons_fictial_moon_id_seq OWNER TO freecodecamp;

--
-- Name: fictial_moons_fictial_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fictial_moons_fictial_moon_id_seq OWNED BY public.fictial_moons.fictial_moons_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    diameter integer,
    has_life boolean,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth numeric,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth numeric,
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
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    diameter integer,
    galaxy_id integer
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
-- Name: fictial_moons fictial_moons_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictial_moons ALTER COLUMN fictial_moons_id SET DEFAULT nextval('public.fictial_moons_fictial_moon_id_seq'::regclass);


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
-- Data for Name: fictial_moons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fictial_moons VALUES (1, 'ghomrassen', 'primary', 10);
INSERT INTO public.fictial_moons VALUES (2, 'guermessa', 'secondary', 10);
INSERT INTO public.fictial_moons VALUES (3, 'chenini', 'elliptical orbit', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', 'huge collection of stars, dust and gas', 0, 13600, 105700, true, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'spiral galaxy, nearest to milky way', 2537, 5000, 152000, false, false);
INSERT INTO public.galaxy VALUES (3, 'black_eye', 'also called black eye or evil eye', 17.29, 5000, 52962, false, false);
INSERT INTO public.galaxy VALUES (4, 'messier 81', ' brightest galaxies in the night sky', 11.74, 13310, 96000, false, false);
INSERT INTO public.galaxy VALUES (5, 'the carthweel', ' rare, ring-shaped galaxy', 489.2, 400, 150000, false, false);
INSERT INTO public.galaxy VALUES (6, 'messier 82', 'bright blue disk', 11.42, 13300, 37000, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'spherical and rocky ', 0.3844, 3);
INSERT INTO public.moon VALUES (2, 'phobos', 'small irregularly shaped', 77.79, 4);
INSERT INTO public.moon VALUES (3, 'deimos', ' tiny, irregularly shaped', 77.79, 4);
INSERT INTO public.moon VALUES (4, 'europa', 'made of silicate rock and has a water-ice', 628.3, 5);
INSERT INTO public.moon VALUES (5, 'ganymede', 'body with an iron-rich, liquid metallic core', 628.3, 5);
INSERT INTO public.moon VALUES (6, 'io', 'silicate rock surrounding a molten iron', 628.3, 5);
INSERT INTO public.moon VALUES (7, 'callisto', 'made up of mostly rock and ice', 628.3, 5);
INSERT INTO public.moon VALUES (8, 'amalthea', 'reddish, irregularly shaped', 628.3, 5);
INSERT INTO public.moon VALUES (9, 'thebe', 'irregularly shaped and reddish', 628.3, 5);
INSERT INTO public.moon VALUES (10, 'titan', 'icy world and a golden hazy atmosphere', 746, 6);
INSERT INTO public.moon VALUES (11, 'enceladus', 'icy covered in ice and geysers', 1272, 6);
INSERT INTO public.moon VALUES (12, 'mimas', 'covered in craters and low density', 1272, 6);
INSERT INTO public.moon VALUES (13, 'dione', 'covered in craters and a wispy terrain', 1272, 6);
INSERT INTO public.moon VALUES (14, 'lapetus', 'striking contrast in surface brightness.', 1272, 6);
INSERT INTO public.moon VALUES (15, 'umbriel', 'darkest and third largest of its moons', 2867.6, 7);
INSERT INTO public.moon VALUES (16, 'titania', 'covered in craters and valleys', 2723, 7);
INSERT INTO public.moon VALUES (17, 'miranda', 'Slightly nonspherical in shape', 2723, 7);
INSERT INTO public.moon VALUES (18, 'oberon', 'covered in craters', 2723, 7);
INSERT INTO public.moon VALUES (19, 'ariel', 'brightest moon of uranus', 2723, 7);
INSERT INTO public.moon VALUES (20, 'charon', 'half the size of Pluto', 5411, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'closest and smallest', 206.74, 7);
INSERT INTO public.planet VALUES (2, 'venus', 'hottest', 88.913, 7);
INSERT INTO public.planet VALUES (3, 'earth', 'water world', 0, 7);
INSERT INTO public.planet VALUES (4, 'mars', 'cold and desert', 225, 7);
INSERT INTO public.planet VALUES (5, 'jupiter', 'largest', 714, 7);
INSERT INTO public.planet VALUES (6, 'saturn', 'ring system', 1541, 7);
INSERT INTO public.planet VALUES (7, 'uranus', 'oddball', 2867.6, 7);
INSERT INTO public.planet VALUES (8, 'neptune', 'coldest', 4553.4, 7);
INSERT INTO public.planet VALUES (9, 'pluto', 'smaller', 5411, 7);
INSERT INTO public.planet VALUES (10, 'tatooine', 'harsh desert', NULL, 8);
INSERT INTO public.planet VALUES (11, 'naboo', 'idyllic world', NULL, 8);
INSERT INTO public.planet VALUES (12, 'alderaan', 'influential world', NULL, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'VY canis majoris', 'extreme oxygen-rich red hypergiant', 3900, 8, 1975, 1);
INSERT INTO public.star VALUES (2, 'UY scuti', 'red supergiant star', 0.009459, 10, 2376, 1);
INSERT INTO public.star VALUES (3, 'V354 Cephei', 'red supergiant star ', 9000, NULL, 1537, 1);
INSERT INTO public.star VALUES (4, 'RW Cephei', 'K-type hypergiant and a semirregular variable star', 11420, 19, 2136, 1);
INSERT INTO public.star VALUES (5, 'KY Cygni', 'red supergiant star', 5153, 9000, 2092, 1);
INSERT INTO public.star VALUES (6, 'Mu Cephei', 'red supergiant star', 2838, 10000, 1753, 1);
INSERT INTO public.star VALUES (7, 'The sun', 'star of the Solar System', 147.23, 4603, 1393, 1);
INSERT INTO public.star VALUES (8, 'star wars', 'movie', 1800, 5000, 3000, 3);


--
-- Name: fictial_moons_fictial_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fictial_moons_fictial_moon_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: fictial_moons fictial_moons_fictial_moons_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictial_moons
    ADD CONSTRAINT fictial_moons_fictial_moons_id_key UNIQUE (fictial_moons_id);


--
-- Name: fictial_moons fictial_moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictial_moons
    ADD CONSTRAINT fictial_moons_pkey PRIMARY KEY (fictial_moons_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: fictial_moons fictial_moons_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictial_moons
    ADD CONSTRAINT fictial_moons_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

