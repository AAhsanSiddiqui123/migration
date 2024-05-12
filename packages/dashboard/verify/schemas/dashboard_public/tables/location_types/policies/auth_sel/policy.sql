-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.location_types');
COMMIT;  

