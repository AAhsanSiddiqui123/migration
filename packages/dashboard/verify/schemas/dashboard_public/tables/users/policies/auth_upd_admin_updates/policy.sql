-- Verify: schemas/dashboard_public/tables/users/policies/auth_upd_admin_updates/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_admin_updates', 'dashboard_public.users');
COMMIT;  

