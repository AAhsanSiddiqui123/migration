-- Verify schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reward_activity_type  on pg

BEGIN;

SELECT reward_activity_type FROM dashboard_public.user_rewards LIMIT 1;

ROLLBACK;
