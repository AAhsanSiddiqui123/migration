-- Revert: schemas/dashboard_memberships_private/trigger_fns/delete_groups_remove_mbrs from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".delete_groups_remove_mbrs;
COMMIT;  

