-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions DROP COLUMN created_at;
ALTER TABLE dashboard_public.user_dismissed_track_actions DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_user_dismissed_track_actions_modtime ON dashboard_public.user_dismissed_track_actions;

COMMIT;
