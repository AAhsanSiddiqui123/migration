-- Revert schemas/dashboard_roles_public/procedures/verify_token from pg

BEGIN;

DROP FUNCTION dashboard_roles_public.verify_token;

COMMIT;
