--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: usa_accident; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usa_accident (
    index_id integer NOT NULL,
    "ID" character varying(15),
    "Source" character varying(10),
    "Start_Time" character varying(45),
    "End_Time" character varying(45),
    "Start_Lat" double precision,
    "Start_Lng" double precision,
    "End_Lat" double precision,
    "End_Lng" double precision,
    "Distance(mi)" double precision,
    "Description" text,
    "Street" character varying(100),
    "City" character varying(45),
    "County" character varying(45),
    "State" character varying(45),
    "Zipcode" character varying(45),
    "Country" character varying(45),
    "Timezone" character varying(45),
    "Airport_Code" character varying(45),
    "Weather_Timestamp" character varying(45),
    "Temperature(F)" double precision,
    "Wind_Chill(F)" double precision,
    "Humidity(%)" double precision,
    "Pressure(in)" double precision,
    "Visibility(mi)" double precision,
    "Wind_Direction" character varying(45),
    "Wind_Speed(mph)" double precision,
    "Precipitation(in)" double precision,
    "Weather_Condition" character varying(45),
    "Amenity" boolean,
    "Bump" boolean,
    "Crossing" boolean,
    "Give_Way" boolean,
    "Junction" boolean,
    "No_Exit" boolean,
    "Railway" boolean,
    "Roundabout" boolean,
    "Station" integer,
    "Stop" integer,
    "Traffic_Calming" boolean,
    "Traffic_Signal" integer,
    "Turning_Loop" boolean,
    "Sunrise_Sunset" character varying(10),
    "Civil_Twilight" character varying(10),
    "Nautical_Twilight" character varying(10),
    "Astronomical_Twilight" character varying(10),
    "Severity" smallint
);


ALTER TABLE public.usa_accident OWNER TO postgres;

--
-- Name: usa_accident usa_accident_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usa_accident
    ADD CONSTRAINT usa_accident_pkey PRIMARY KEY (index_id);


--
-- PostgreSQL database dump complete
--

