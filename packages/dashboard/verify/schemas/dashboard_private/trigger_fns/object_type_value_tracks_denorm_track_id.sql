-- Verify: schemas/dashboard_private/trigger_fns/object_type_value_tracks_denorm_track_id on pg

BEGIN;
SELECT verify_function('dashboard_private.object_type_value_tracks_denorm_track_id');
COMMIT;  

