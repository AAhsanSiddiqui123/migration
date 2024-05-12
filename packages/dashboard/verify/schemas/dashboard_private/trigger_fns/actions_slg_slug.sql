-- Verify: schemas/dashboard_private/trigger_fns/actions_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.actions_slg_slug');
COMMIT;  

