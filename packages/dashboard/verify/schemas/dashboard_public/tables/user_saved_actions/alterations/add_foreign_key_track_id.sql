-- Verify schemas/dashboard_public/tables/user_saved_actions/alterations/add_foreign_key_track_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_saved_actions', 'fk_dashboard_public_user_saved_actions_track_id');

ROLLBACK;
