-- Verify: schemas/dashboard_public/tables/user_locations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_locations');
COMMIT;  

