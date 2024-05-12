-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/ensure_update_owner_id from pg

BEGIN;

DROP TRIGGER ensure_update_owner_id ON dashboard_public.user_dismissed_track_actions;
DROP FUNCTION dashboard_private.tg_ensure_update_owner_id; 

COMMIT;
