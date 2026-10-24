--
-- PostgreSQL database dump
--

\restrict Lnu9w1N5i01Ga8NSCC2RdOQRzbQdOHiTUcd69zAjpwAm5ld2SaluD44LXtZCDPz

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.6 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Strategy');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Action');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'RPG');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Shooter');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Simulation');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Sandbox');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (7, 'Action RPG');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (8, 'Metroidvania');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (9, 'MOBA');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (10, 'Party');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (11, 'Puzzle');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (12, 'Roguelike');
INSERT INTO public.genres (id, name) OVERRIDING SYSTEM VALUE VALUES (13, 'Survival');


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (27, 'Factorio', 2020, NULL, NULL);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (28, 'No Man''s Sky', 2016, NULL, NULL);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Counter-Strike 2', 2023, NULL, 4);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Dota 2', 2013, NULL, 9);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Cyberpunk 2077', 2020, NULL, 3);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (7, 'The Witcher 3', 2015, NULL, 3);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Baldur''s Gate 3', 2023, NULL, 3);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (9, 'StarCraft II', 2010, NULL, 1);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (10, 'Civilization VI', 2016, NULL, 1);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (11, 'Age of Empires IV', 2021, NULL, 1);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (12, 'Half-Life 2', 2004, NULL, 4);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (13, 'Portal 2', 2011, NULL, 11);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (14, 'Minecraft', 2011, NULL, 6);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (15, 'Terraria', 2011, NULL, 6);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (16, 'Elden Ring', 2022, NULL, 7);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (17, 'Dark Souls III', 2016, NULL, 7);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (18, 'Red Dead Redemption 2', 2018, NULL, 2);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (19, 'Grand Theft Auto V', 2013, NULL, 2);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (20, 'Hollow Knight', 2017, NULL, 8);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (21, 'Hades', 2020, NULL, 12);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (22, 'RimWorld', 2018, NULL, 5);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (23, 'Stardew Valley', 2016, NULL, 5);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (24, 'Among Us', 2018, NULL, 10);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (25, 'Valheim', 2021, NULL, 13);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (26, 'Kerbal Space Program', 2015, NULL, 5);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Armored Front', 2024, 8.5, 1);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (2, 'War Thunder', 2012, 9.0, 2);
INSERT INTO public.games (id, title, release_year, score, genre_id) OVERRIDING SYSTEM VALUE VALUES (3, 'World of tanks', 2010, NULL, 2);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.games_id_seq', 28, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genres_id_seq', 13, true);


--
-- PostgreSQL database dump complete
--

\unrestrict Lnu9w1N5i01Ga8NSCC2RdOQRzbQdOHiTUcd69zAjpwAm5ld2SaluD44LXtZCDPz

