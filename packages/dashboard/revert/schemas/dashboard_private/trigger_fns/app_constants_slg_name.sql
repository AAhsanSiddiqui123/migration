-- Revert: schemas/dashboard_private/trigger_fns/app_constants_slg_name from pg

BEGIN;
DROP FUNCTION "dashboard_private".app_constants_slg_name;
COMMIT;  

