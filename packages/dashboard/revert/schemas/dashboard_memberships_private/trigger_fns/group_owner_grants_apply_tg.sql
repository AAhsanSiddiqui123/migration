-- Revert: schemas/dashboard_memberships_private/trigger_fns/group_owner_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_owner_grants_apply_tg;
COMMIT;  

