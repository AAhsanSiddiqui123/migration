-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_sel_owner from pg

BEGIN;



DROP POLICY auth_sel_owner ON dashboard_public.user_dismissed_track_actions;

COMMIT;
