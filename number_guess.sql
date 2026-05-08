--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    secret_number integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 22, 578, 3);
INSERT INTO public.games VALUES (2, 23, 313, 314);
INSERT INTO public.games VALUES (3, 23, 692, 693);
INSERT INTO public.games VALUES (4, 24, 265, 266);
INSERT INTO public.games VALUES (5, 24, 110, 111);
INSERT INTO public.games VALUES (6, 23, 963, 966);
INSERT INTO public.games VALUES (7, 23, 765, 767);
INSERT INTO public.games VALUES (8, 23, 551, 552);
INSERT INTO public.games VALUES (9, 25, 121, 122);
INSERT INTO public.games VALUES (10, 25, 26, 27);
INSERT INTO public.games VALUES (11, 26, 972, 973);
INSERT INTO public.games VALUES (12, 26, 584, 585);
INSERT INTO public.games VALUES (13, 25, 810, 813);
INSERT INTO public.games VALUES (14, 25, 167, 169);
INSERT INTO public.games VALUES (15, 25, 366, 367);
INSERT INTO public.games VALUES (16, 22, 740, 1);
INSERT INTO public.games VALUES (17, 27, 83, 84);
INSERT INTO public.games VALUES (18, 27, 903, 904);
INSERT INTO public.games VALUES (19, 28, 422, 423);
INSERT INTO public.games VALUES (20, 28, 951, 952);
INSERT INTO public.games VALUES (21, 27, 914, 917);
INSERT INTO public.games VALUES (22, 27, 948, 950);
INSERT INTO public.games VALUES (23, 27, 999, 1000);
INSERT INTO public.games VALUES (24, 29, 458, 459);
INSERT INTO public.games VALUES (25, 29, 138, 139);
INSERT INTO public.games VALUES (26, 30, 352, 353);
INSERT INTO public.games VALUES (27, 30, 752, 753);
INSERT INTO public.games VALUES (28, 29, 296, 299);
INSERT INTO public.games VALUES (29, 29, 497, 499);
INSERT INTO public.games VALUES (30, 29, 80, 81);
INSERT INTO public.games VALUES (31, 31, 230, 231);
INSERT INTO public.games VALUES (32, 31, 244, 245);
INSERT INTO public.games VALUES (33, 32, 94, 95);
INSERT INTO public.games VALUES (34, 32, 188, 189);
INSERT INTO public.games VALUES (35, 31, 305, 308);
INSERT INTO public.games VALUES (36, 31, 838, 840);
INSERT INTO public.games VALUES (37, 31, 463, 464);
INSERT INTO public.games VALUES (38, 33, 876, 877);
INSERT INTO public.games VALUES (39, 33, 959, 960);
INSERT INTO public.games VALUES (40, 34, 850, 851);
INSERT INTO public.games VALUES (41, 34, 475, 476);
INSERT INTO public.games VALUES (42, 33, 908, 911);
INSERT INTO public.games VALUES (43, 33, 338, 340);
INSERT INTO public.games VALUES (44, 33, 597, 598);
INSERT INTO public.games VALUES (45, 35, 464, 465);
INSERT INTO public.games VALUES (46, 35, 940, 941);
INSERT INTO public.games VALUES (47, 36, 302, 303);
INSERT INTO public.games VALUES (48, 36, 978, 979);
INSERT INTO public.games VALUES (49, 35, 460, 463);
INSERT INTO public.games VALUES (50, 35, 835, 837);
INSERT INTO public.games VALUES (51, 35, 390, 391);
INSERT INTO public.games VALUES (52, 37, 221, 222);
INSERT INTO public.games VALUES (53, 37, 594, 595);
INSERT INTO public.games VALUES (54, 38, 123, 124);
INSERT INTO public.games VALUES (55, 38, 125, 126);
INSERT INTO public.games VALUES (56, 37, 675, 678);
INSERT INTO public.games VALUES (57, 37, 634, 636);
INSERT INTO public.games VALUES (58, 37, 422, 423);
INSERT INTO public.games VALUES (59, 39, 374, 375);
INSERT INTO public.games VALUES (60, 39, 536, 537);
INSERT INTO public.games VALUES (61, 40, 459, 460);
INSERT INTO public.games VALUES (62, 40, 496, 497);
INSERT INTO public.games VALUES (63, 39, 730, 733);
INSERT INTO public.games VALUES (64, 39, 271, 273);
INSERT INTO public.games VALUES (65, 39, 984, 985);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (24, 'user_1778213884318', 2);
INSERT INTO public.users VALUES (23, 'user_1778213884319', 5);
INSERT INTO public.users VALUES (26, 'user_1778213896378', 2);
INSERT INTO public.users VALUES (25, 'user_1778213896379', 5);
INSERT INTO public.users VALUES (22, 'Faker', 2);
INSERT INTO public.users VALUES (28, 'user_1778213942743', 2);
INSERT INTO public.users VALUES (27, 'user_1778213942744', 5);
INSERT INTO public.users VALUES (30, 'user_1778213949015', 2);
INSERT INTO public.users VALUES (29, 'user_1778213949016', 5);
INSERT INTO public.users VALUES (32, 'user_1778214047129', 2);
INSERT INTO public.users VALUES (31, 'user_1778214047130', 5);
INSERT INTO public.users VALUES (34, 'user_1778214073782', 2);
INSERT INTO public.users VALUES (33, 'user_1778214073783', 5);
INSERT INTO public.users VALUES (36, 'user_1778214097649', 2);
INSERT INTO public.users VALUES (35, 'user_1778214097650', 5);
INSERT INTO public.users VALUES (38, 'user_1778214104779', 2);
INSERT INTO public.users VALUES (37, 'user_1778214104780', 5);
INSERT INTO public.users VALUES (40, 'user_1778214124767', 2);
INSERT INTO public.users VALUES (39, 'user_1778214124768', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

