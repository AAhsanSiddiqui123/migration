-- Revert: schemas/dashboard_private/trigger_fns/user_tracks_denorm_track_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_tracks_denorm_track_id;
COMMIT;  

