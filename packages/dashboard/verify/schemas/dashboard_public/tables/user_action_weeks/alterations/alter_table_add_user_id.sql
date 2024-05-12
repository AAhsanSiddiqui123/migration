-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_user_id  on pg

BEGIN;

SELECT user_id FROM dashboard_public.user_action_weeks LIMIT 1;

ROLLBACK;
