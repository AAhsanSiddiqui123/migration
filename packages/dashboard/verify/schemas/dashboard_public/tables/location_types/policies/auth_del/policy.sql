-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.location_types');
COMMIT;  

