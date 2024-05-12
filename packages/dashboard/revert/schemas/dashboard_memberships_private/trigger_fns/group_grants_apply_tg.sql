-- Revert: schemas/dashboard_memberships_private/trigger_fns/group_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_grants_apply_tg;
COMMIT;  

