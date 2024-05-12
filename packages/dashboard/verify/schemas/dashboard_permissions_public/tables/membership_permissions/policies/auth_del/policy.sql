-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_permissions_public.membership_permissions');
COMMIT;  

