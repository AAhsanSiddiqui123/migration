-- Verify: schemas/dashboard_public/tables/user_connections/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_connections');
COMMIT;  

