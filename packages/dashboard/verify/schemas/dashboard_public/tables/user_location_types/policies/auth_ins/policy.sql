-- Verify: schemas/dashboard_public/tables/user_location_types/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.user_location_types');
COMMIT;  

