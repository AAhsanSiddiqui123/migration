-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.user_dismissed_track_actions LIMIT 1;
SELECT updated_at FROM dashboard_public.user_dismissed_track_actions LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_dismissed_track_actions_modtime');

ROLLBACK;
