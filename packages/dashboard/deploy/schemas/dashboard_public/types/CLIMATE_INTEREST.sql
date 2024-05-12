-- Deploy schemas/dashboard_public/types/CLIMATE_INTEREST to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TYPE public.CLIMATE_INTEREST  AS ENUM('garden','compost','water','energy','disaster','rebates','habits','surprise');


COMMIT;
