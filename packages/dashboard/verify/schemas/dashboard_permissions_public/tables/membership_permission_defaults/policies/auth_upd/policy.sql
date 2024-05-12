-- Verify: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_permissions_public.membership_permission_defaults');
COMMIT;  

