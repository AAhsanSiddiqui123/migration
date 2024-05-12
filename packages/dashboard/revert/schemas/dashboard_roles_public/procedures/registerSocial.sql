-- Revert schemas/dashboard_roles_public/procedures/registerSocial from pg

BEGIN;

DROP FUNCTION dashboard_roles_public.register_social;

COMMIT;
