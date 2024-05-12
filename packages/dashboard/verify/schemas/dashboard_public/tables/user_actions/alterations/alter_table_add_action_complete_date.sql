-- Verify schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_action_date  on pg

BEGIN;

SELECT action_complete_date FROM dashboard_public.user_actions LIMIT 1;

ROLLBACK;
