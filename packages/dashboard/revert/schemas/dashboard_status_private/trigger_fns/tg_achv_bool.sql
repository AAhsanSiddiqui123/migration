-- Revert: schemas/dashboard_status_private/trigger_fns/tg_achv_bool from pg

BEGIN;


DROP FUNCTION "dashboard_status_private".tg_achv_bool;
COMMIT;  

