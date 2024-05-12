-- Verify schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_activity_type  on pg

BEGIN;

SELECT activity_type FROM dashboard_public.reward_activity_types LIMIT 1;

ROLLBACK;
