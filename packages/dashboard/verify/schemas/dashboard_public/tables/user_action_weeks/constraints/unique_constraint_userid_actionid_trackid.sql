-- Verify dashboard:schemas/dashboard_public/tables/user_action_weeks/constraints/unique_constraint_userid_actionid_trackid on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_action_weeks', 'user_action_weeks_userid_actionid_trackid_key');

ROLLBACK;
