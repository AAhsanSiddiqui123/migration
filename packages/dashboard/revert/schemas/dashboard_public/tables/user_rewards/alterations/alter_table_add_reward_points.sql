-- Revert schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reward_points from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP COLUMN reward_points;

COMMIT;
