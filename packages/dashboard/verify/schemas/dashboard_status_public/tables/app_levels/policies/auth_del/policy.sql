-- Verify: schemas/dashboard_status_public/tables/app_levels/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_status_public.app_levels');
COMMIT;  

