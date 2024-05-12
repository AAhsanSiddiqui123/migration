-- Revert: schemas/dashboard_limits_private/trigger_fns/app_limits_upd_tg from pg

BEGIN;


DROP FUNCTION "dashboard_limits_private".app_limits_upd_tg;
COMMIT;  

