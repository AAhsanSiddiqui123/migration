-- Verify: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_roles_public.auth_accounts');
COMMIT;  

