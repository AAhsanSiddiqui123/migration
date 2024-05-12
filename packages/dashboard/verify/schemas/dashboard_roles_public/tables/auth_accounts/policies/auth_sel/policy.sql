-- Verify: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_roles_public.auth_accounts');
COMMIT;  

