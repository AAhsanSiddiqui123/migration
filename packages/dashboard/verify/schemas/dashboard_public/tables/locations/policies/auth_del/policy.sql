-- Verify: schemas/dashboard_public/tables/locations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.locations');
COMMIT;  

