-- Revert: schemas/dashboard_private/trigger_fns/tracks_slg_slug from pg

BEGIN;
DROP FUNCTION "dashboard_private".tracks_slg_slug;
COMMIT;  

