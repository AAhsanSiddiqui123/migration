-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.user_dismissed_track_actions;

COMMIT;
