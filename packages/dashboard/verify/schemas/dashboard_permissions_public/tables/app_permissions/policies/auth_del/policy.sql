-- Verify: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_permissions_public.app_permissions');
COMMIT;  

