-- Verify: schemas/dashboard_private/trigger_fns/tracks_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.tracks_slg_slug');
COMMIT;  

