-- Revert: schemas/dashboard_memberships_private/trigger_fns/group_memberships_itg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_memberships_itg;
COMMIT;  

