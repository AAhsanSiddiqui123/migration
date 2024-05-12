-- Revert: schemas/dashboard_memberships_private/trigger_fns/group_admin_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_admin_grants_apply_tg;
COMMIT;  

