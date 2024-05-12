-- Verify: schemas/dashboard_private/trigger_fns/user_tracks_denorm_track_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_tracks_denorm_track_id');
COMMIT;  

