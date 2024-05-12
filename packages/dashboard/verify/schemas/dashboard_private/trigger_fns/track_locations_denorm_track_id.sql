-- Verify: schemas/dashboard_private/trigger_fns/track_locations_denorm_track_id on pg

BEGIN;
SELECT verify_function('dashboard_private.track_locations_denorm_track_id');
COMMIT;  

