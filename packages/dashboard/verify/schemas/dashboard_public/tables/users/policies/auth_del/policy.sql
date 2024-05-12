-- Verify: schemas/dashboard_public/tables/users/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.users');
COMMIT;  

