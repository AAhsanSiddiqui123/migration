-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.user_dismissed_track_actions;

COMMIT;
