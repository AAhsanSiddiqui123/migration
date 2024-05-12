-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.location_types');
COMMIT;  

