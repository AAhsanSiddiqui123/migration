-- Revert: schemas/dashboard_private/trigger_fns/track_locations_denorm_track_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".track_locations_denorm_track_id;
COMMIT;  

