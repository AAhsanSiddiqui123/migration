-- Verify: schemas/dashboard_public/tables/user_locations/policies/auth_del/policy/alterations/alt0000001555 on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_locations');
COMMIT;  

