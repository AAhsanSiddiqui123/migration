-- Revert: schemas/dashboard_private/trigger_fns/object_type_value_tracks_denorm_track_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".object_type_value_tracks_denorm_track_id;
COMMIT;  

