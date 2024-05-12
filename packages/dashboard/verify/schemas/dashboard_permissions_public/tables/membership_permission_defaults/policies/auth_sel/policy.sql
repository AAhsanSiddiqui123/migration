-- Verify: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_permissions_public.membership_permission_defaults');
COMMIT;  

