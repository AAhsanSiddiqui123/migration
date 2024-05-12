-- Verify schemas/dashboard_public/types/CLIMATE_INTEREST_M on pg

BEGIN;

SELECT verify_type ('dashboard_public.CLIMATE_INTEREST_M');

ROLLBACK;
