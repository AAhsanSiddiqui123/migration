-- Revert: schemas/dashboard_memberships_private/trigger_fns/app_memberships_delete_acl_tg from pg

BEGIN;


DROP FUNCTION "dashboard_memberships_private".app_memberships_delete_acl_tg;
COMMIT;  

