-- Revert: schemas/dashboard_private/trigger_fns/track_actions_denorm_track_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".track_actions_denorm_track_id;
COMMIT;  

