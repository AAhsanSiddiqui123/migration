-- Verify: schemas/dashboard_public/tables/locations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.locations');
COMMIT;  

