-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.user_dismissed_track_actions LIMIT 1;
SELECT updated_by FROM dashboard_public.user_dismissed_track_actions LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_dismissed_track_actions_moduser');

ROLLBACK;
