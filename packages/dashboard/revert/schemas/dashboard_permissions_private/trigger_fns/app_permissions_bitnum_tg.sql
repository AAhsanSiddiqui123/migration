-- Revert: schemas/dashboard_permissions_private/trigger_fns/app_permissions_bitnum_tg from pg

BEGIN;


DROP FUNCTION "dashboard_permissions_private".app_permissions_bitnum_tg;
COMMIT;  

