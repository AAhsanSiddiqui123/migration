-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.user_dismissed_track_actions;

COMMIT;
