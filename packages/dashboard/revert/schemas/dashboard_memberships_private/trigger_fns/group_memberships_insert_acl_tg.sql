-- Revert: schemas/dashboard_memberships_private/trigger_fns/group_memberships_insert_acl_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".group_memberships_insert_acl_tg;
COMMIT;  

