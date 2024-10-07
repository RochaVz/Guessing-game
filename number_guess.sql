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
    guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 254, 13);
INSERT INTO public.games VALUES (2, 920, 13);
INSERT INTO public.games VALUES (3, 684, 14);
INSERT INTO public.games VALUES (4, 158, 14);
INSERT INTO public.games VALUES (5, 328, 13);
INSERT INTO public.games VALUES (6, 864, 13);
INSERT INTO public.games VALUES (7, 244, 13);
INSERT INTO public.games VALUES (8, 9, 1);
INSERT INTO public.games VALUES (9, 474, 15);
INSERT INTO public.games VALUES (10, 531, 15);
INSERT INTO public.games VALUES (11, 452, 16);
INSERT INTO public.games VALUES (12, 235, 16);
INSERT INTO public.games VALUES (13, 692, 15);
INSERT INTO public.games VALUES (14, 610, 15);
INSERT INTO public.games VALUES (15, 771, 15);
INSERT INTO public.games VALUES (16, 567, 17);
INSERT INTO public.games VALUES (17, 195, 17);
INSERT INTO public.games VALUES (18, 12, 18);
INSERT INTO public.games VALUES (19, 868, 18);
INSERT INTO public.games VALUES (20, 835, 17);
INSERT INTO public.games VALUES (21, 586, 17);
INSERT INTO public.games VALUES (22, 80, 17);
INSERT INTO public.games VALUES (23, 14, 1);
INSERT INTO public.games VALUES (24, 698, 19);
INSERT INTO public.games VALUES (25, 564, 19);
INSERT INTO public.games VALUES (26, 482, 20);
INSERT INTO public.games VALUES (27, 363, 20);
INSERT INTO public.games VALUES (28, 480, 19);
INSERT INTO public.games VALUES (29, 588, 19);
INSERT INTO public.games VALUES (30, 362, 19);
INSERT INTO public.games VALUES (31, 24, 1);
INSERT INTO public.games VALUES (32, 940, 22);
INSERT INTO public.games VALUES (33, 624, 22);
INSERT INTO public.games VALUES (34, 484, 23);
INSERT INTO public.games VALUES (35, 230, 23);
INSERT INTO public.games VALUES (36, 917, 22);
INSERT INTO public.games VALUES (37, 481, 22);
INSERT INTO public.games VALUES (38, 123, 22);
INSERT INTO public.games VALUES (39, 105, 24);
INSERT INTO public.games VALUES (40, 970, 24);
INSERT INTO public.games VALUES (41, 458, 25);
INSERT INTO public.games VALUES (42, 770, 25);
INSERT INTO public.games VALUES (43, 391, 24);
INSERT INTO public.games VALUES (44, 219, 24);
INSERT INTO public.games VALUES (45, 63, 24);
INSERT INTO public.games VALUES (46, 9, 26);
INSERT INTO public.games VALUES (47, 633, 27);
INSERT INTO public.games VALUES (48, 710, 27);
INSERT INTO public.games VALUES (49, 173, 28);
INSERT INTO public.games VALUES (50, 763, 28);
INSERT INTO public.games VALUES (51, 643, 27);
INSERT INTO public.games VALUES (52, 56, 27);
INSERT INTO public.games VALUES (53, 288, 27);
INSERT INTO public.games VALUES (54, 12, 26);
INSERT INTO public.games VALUES (55, 214, 29);
INSERT INTO public.games VALUES (56, 135, 29);
INSERT INTO public.games VALUES (57, 409, 30);
INSERT INTO public.games VALUES (58, 219, 30);
INSERT INTO public.games VALUES (59, 503, 29);
INSERT INTO public.games VALUES (60, 472, 29);
INSERT INTO public.games VALUES (61, 173, 29);
INSERT INTO public.games VALUES (62, 863, 31);
INSERT INTO public.games VALUES (63, 282, 31);
INSERT INTO public.games VALUES (64, 414, 32);
INSERT INTO public.games VALUES (65, 596, 32);
INSERT INTO public.games VALUES (66, 578, 31);
INSERT INTO public.games VALUES (67, 223, 31);
INSERT INTO public.games VALUES (68, 278, 31);
INSERT INTO public.games VALUES (69, 139, 33);
INSERT INTO public.games VALUES (70, 878, 33);
INSERT INTO public.games VALUES (71, 767, 34);
INSERT INTO public.games VALUES (72, 48, 34);
INSERT INTO public.games VALUES (73, 568, 33);
INSERT INTO public.games VALUES (74, 14, 33);
INSERT INTO public.games VALUES (75, 109, 33);
INSERT INTO public.games VALUES (76, 868, 35);
INSERT INTO public.games VALUES (77, 510, 35);
INSERT INTO public.games VALUES (78, 830, 36);
INSERT INTO public.games VALUES (79, 589, 36);
INSERT INTO public.games VALUES (80, 369, 35);
INSERT INTO public.games VALUES (81, 232, 35);
INSERT INTO public.games VALUES (82, 788, 35);
INSERT INTO public.games VALUES (83, 625, 37);
INSERT INTO public.games VALUES (84, 829, 37);
INSERT INTO public.games VALUES (85, 46, 38);
INSERT INTO public.games VALUES (86, 866, 38);
INSERT INTO public.games VALUES (87, 77, 37);
INSERT INTO public.games VALUES (88, 945, 37);
INSERT INTO public.games VALUES (89, 435, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'carlos');
INSERT INTO public.users VALUES (2, 'car');
INSERT INTO public.users VALUES (3, 'user_1728302633577');
INSERT INTO public.users VALUES (4, 'user_1728302633576');
INSERT INTO public.users VALUES (5, 'user_1728304044651');
INSERT INTO public.users VALUES (6, 'user_1728304044650');
INSERT INTO public.users VALUES (7, 'user_1728304123716');
INSERT INTO public.users VALUES (8, 'user_1728304123715');
INSERT INTO public.users VALUES (9, 'user_1728304199308');
INSERT INTO public.users VALUES (10, 'user_1728304199307');
INSERT INTO public.users VALUES (11, 'user_1728304274374');
INSERT INTO public.users VALUES (12, 'user_1728304274373');
INSERT INTO public.users VALUES (13, 'user_1728304589738');
INSERT INTO public.users VALUES (14, 'user_1728304589737');
INSERT INTO public.users VALUES (15, 'user_1728304651570');
INSERT INTO public.users VALUES (16, 'user_1728304651569');
INSERT INTO public.users VALUES (17, 'user_1728304752236');
INSERT INTO public.users VALUES (18, 'user_1728304752235');
INSERT INTO public.users VALUES (19, 'user_1728304813233');
INSERT INTO public.users VALUES (20, 'user_1728304813231');
INSERT INTO public.users VALUES (21, 'lopez');
INSERT INTO public.users VALUES (22, 'user_1728305593358');
INSERT INTO public.users VALUES (23, 'user_1728305593357');
INSERT INTO public.users VALUES (24, 'user_1728305729868');
INSERT INTO public.users VALUES (25, 'user_1728305729867');
INSERT INTO public.users VALUES (26, 'lalo');
INSERT INTO public.users VALUES (27, 'user_1728305817653');
INSERT INTO public.users VALUES (28, 'user_1728305817652');
INSERT INTO public.users VALUES (29, 'user_1728305991586');
INSERT INTO public.users VALUES (30, 'user_1728305991585');
INSERT INTO public.users VALUES (31, 'user_1728306065806');
INSERT INTO public.users VALUES (32, 'user_1728306065805');
INSERT INTO public.users VALUES (33, 'user_1728306121742');
INSERT INTO public.users VALUES (34, 'user_1728306121741');
INSERT INTO public.users VALUES (35, 'user_1728306362093');
INSERT INTO public.users VALUES (36, 'user_1728306362092');
INSERT INTO public.users VALUES (37, 'user_1728306398623');
INSERT INTO public.users VALUES (38, 'user_1728306398622');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

