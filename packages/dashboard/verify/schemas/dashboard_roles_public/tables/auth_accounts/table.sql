-- Verify: schemas/dashboard_roles_public/tables/auth_accounts/table on pg

BEGIN;
SELECT verify_table('dashboard_roles_public.auth_accounts');
COMMIT;  

