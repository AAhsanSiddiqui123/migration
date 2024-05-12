-- Verify: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_roles_public.auth_accounts');
COMMIT;  

