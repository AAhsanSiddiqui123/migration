-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/add_foreign_key_user_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_action_weeks', 'fk_dashboard_public_user_action_weeks_user_id');

ROLLBACK;
