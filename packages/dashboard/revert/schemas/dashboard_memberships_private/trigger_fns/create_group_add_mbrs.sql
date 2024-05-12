-- Revert: schemas/dashboard_memberships_private/trigger_fns/create_group_add_mbrs from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".create_group_add_mbrs;
COMMIT;  

