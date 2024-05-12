-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/add_foreign_key_track_action_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_dismissed_track_actions', 'fk_dashboard_public_user_dismissed_track_actions_track_actionid');

ROLLBACK;
