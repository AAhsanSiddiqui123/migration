-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_ins  on pg

BEGIN;

SELECT verify_policy ('auth_ins', 'dashboard_public.user_dismissed_track_actions');


ROLLBACK;
