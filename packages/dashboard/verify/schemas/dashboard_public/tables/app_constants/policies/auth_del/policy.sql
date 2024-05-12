-- Verify: schemas/dashboard_public/tables/app_constants/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.app_constants');
COMMIT;  

