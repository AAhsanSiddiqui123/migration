-- Verify schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_neighbourhood  on pg

BEGIN;

SELECT neighbourhood FROM dashboard_public.user_action_weeks LIMIT 1;

ROLLBACK;
