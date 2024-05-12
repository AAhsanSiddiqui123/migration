-- Verify: schemas/dashboard_private/trigger_fns/app_constants_slg_name on pg

BEGIN;
SELECT verify_function('dashboard_private.app_constants_slg_name');
COMMIT;  

