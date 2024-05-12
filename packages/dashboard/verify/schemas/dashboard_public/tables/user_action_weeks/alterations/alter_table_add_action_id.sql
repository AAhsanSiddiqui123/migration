-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_action_id  on pg

BEGIN;

SELECT action_id FROM dashboard_public.user_action_weeks LIMIT 1;

ROLLBACK;
