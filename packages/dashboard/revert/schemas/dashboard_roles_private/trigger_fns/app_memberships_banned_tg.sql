-- Revert: schemas/dashboard_roles_private/trigger_fns/app_memberships_banned_tg from pg

BEGIN;


DROP FUNCTION "dashboard_roles_private".app_memberships_banned_tg;
COMMIT;  

