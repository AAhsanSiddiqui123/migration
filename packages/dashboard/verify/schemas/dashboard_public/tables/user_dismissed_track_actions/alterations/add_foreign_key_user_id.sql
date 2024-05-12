-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/add_foreign_key_user_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_dismissed_track_actions', 'fk_dashboard_public_user_dismissed_track_actions_user_id');

ROLLBACK;
