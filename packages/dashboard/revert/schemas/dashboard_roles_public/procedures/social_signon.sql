-- Revert schemas/dashboard_roles_public/procedures/social_signon from pg

BEGIN;

DROP FUNCTION dashboard_roles_public.social_signon;

COMMIT;
