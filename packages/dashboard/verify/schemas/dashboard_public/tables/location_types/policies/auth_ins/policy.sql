-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.location_types');
COMMIT;  

