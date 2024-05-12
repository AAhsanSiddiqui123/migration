-- Deploy schemas/dashboard_public/types/CLIMATE_INTEREST_M to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

ALTER TYPE public.CLIMATE_INTEREST ADD VALUE 'trees'; 
ALTER TYPE public.CLIMATE_INTEREST ADD VALUE 'biodiversity'; 
ALTER TYPE public.CLIMATE_INTEREST ADD VALUE 'climate_101'; 


COMMIT;
