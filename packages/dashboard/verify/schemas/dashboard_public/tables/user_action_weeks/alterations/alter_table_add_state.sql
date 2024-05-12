-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_state  on pg

BEGIN;

SELECT state FROM dashboard_public.user_action_weeks LIMIT 1;

ROLLBACK;
