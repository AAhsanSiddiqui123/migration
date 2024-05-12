-- Revert: schemas/dashboard_memberships_private/trigger_fns/memberships_delete_acl_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_delete_acl_tg;
COMMIT;  

