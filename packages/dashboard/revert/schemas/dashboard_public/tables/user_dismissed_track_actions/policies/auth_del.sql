-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.user_dismissed_track_actions;

COMMIT;
