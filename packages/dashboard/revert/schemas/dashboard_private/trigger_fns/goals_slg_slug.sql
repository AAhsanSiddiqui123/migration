-- Revert: schemas/dashboard_private/trigger_fns/goals_slg_slug from pg

BEGIN;
DROP FUNCTION "dashboard_private".goals_slg_slug;
COMMIT;  

