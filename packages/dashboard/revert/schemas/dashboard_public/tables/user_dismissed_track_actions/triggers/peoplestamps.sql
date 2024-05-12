-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions DROP COLUMN created_by;
ALTER TABLE dashboard_public.user_dismissed_track_actions DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_user_dismissed_track_actions_moduser ON dashboard_public.user_dismissed_track_actions;

COMMIT;
