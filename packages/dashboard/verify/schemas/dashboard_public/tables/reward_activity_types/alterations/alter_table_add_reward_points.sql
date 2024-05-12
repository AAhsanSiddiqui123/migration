-- Verify schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_reward_points  on pg

BEGIN;

SELECT reward_points FROM dashboard_public.reward_activity_types LIMIT 1;

ROLLBACK;
