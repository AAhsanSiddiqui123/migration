-- Verify dashboard:schemas/dashboard_roles_public/procedures/loginSocial_Update on pg

BEGIN;

SELECT verify_function ('dashboard_roles_public.loginSocial');

ROLLBACK;
