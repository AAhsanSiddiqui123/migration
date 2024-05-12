-- Verify schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_date_acquired  on pg

BEGIN;

SELECT date_acquired FROM dashboard_public.user_rewards LIMIT 1;

ROLLBACK;
