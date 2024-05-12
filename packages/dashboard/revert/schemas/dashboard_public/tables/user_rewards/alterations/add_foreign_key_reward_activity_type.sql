-- Revert schemas/dashboard_public/tables/user_rewards/alterations/add_foreign_key_reward_activity_type from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP CONSTRAINT fk_dashboard_public_user_rewards_reward_activity_type;

COMMIT;
