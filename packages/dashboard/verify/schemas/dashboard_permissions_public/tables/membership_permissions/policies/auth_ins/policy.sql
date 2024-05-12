-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_permissions_public.membership_permissions');
COMMIT;  

