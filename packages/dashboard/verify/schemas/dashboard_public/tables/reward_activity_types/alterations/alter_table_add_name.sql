-- Verify schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.reward_activity_types LIMIT 1;

ROLLBACK;
