-- Revert schemas/dashboard_roles_public/procedures/loginSocial from pg

BEGIN;

DROP FUNCTION dashboard_roles_public.login_social;

COMMIT;
