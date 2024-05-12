-- Revert schemas/dashboard_public/types/CLIMATE_INTEREST from pg

BEGIN;

DROP TYPE public.CLIMATE_INTEREST;

COMMIT;
