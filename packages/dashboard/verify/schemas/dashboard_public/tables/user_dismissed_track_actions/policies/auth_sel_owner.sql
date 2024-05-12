-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_sel_owner  on pg

BEGIN;

SELECT verify_policy ('auth_sel_owner', 'dashboard_public.user_dismissed_track_actions');


ROLLBACK;
