-- Verify: schemas/dashboard_permissions_public/tables/app_permission_defaults/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_permissions_public.app_permission_defaults');
COMMIT;  

