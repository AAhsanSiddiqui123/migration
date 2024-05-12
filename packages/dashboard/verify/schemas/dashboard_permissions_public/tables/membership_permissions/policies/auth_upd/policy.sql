-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_permissions_public.membership_permissions');
COMMIT;  

