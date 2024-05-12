-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_last_action_week  on pg

BEGIN;

SELECT last_action_completion_week FROM dashboard_public.user_action_weeks LIMIT 1;

ROLLBACK;
