-- Verify schemas/dashboard_roles_public/procedures/loginSocial  on pg

BEGIN;

SELECT verify_function ('dashboard_roles_public.loginSocial');

ROLLBACK;
