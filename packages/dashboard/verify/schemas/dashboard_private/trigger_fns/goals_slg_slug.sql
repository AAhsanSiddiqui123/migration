-- Verify: schemas/dashboard_private/trigger_fns/goals_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.goals_slg_slug');
COMMIT;  

