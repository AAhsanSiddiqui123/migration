-- Revert: schemas/dashboard_memberships_private/trigger_fns/memberships_update_acl_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".memberships_update_acl_tg;
COMMIT;  

