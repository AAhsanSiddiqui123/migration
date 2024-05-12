-- Revert: schemas/dashboard_private/trigger_fns/actions_slg_slug from pg

BEGIN;
DROP FUNCTION "dashboard_private".actions_slg_slug;
COMMIT;  

