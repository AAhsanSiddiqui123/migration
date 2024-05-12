-- Verify schemas/dashboard_public/types/CLIMATE_INTEREST on pg

BEGIN;

SELECT verify_type ('public.CLIMATE_INTEREST');

ROLLBACK;
