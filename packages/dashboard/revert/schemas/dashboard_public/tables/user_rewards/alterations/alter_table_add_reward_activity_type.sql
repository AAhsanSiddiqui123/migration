-- Revert schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reward_activity_type from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP COLUMN reward_activity_type;

COMMIT;
