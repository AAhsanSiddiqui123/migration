-- Revert: schemas/dashboard_memberships_private/trigger_fns/app_admin_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".app_admin_grants_apply_tg;
COMMIT;  

