-- Deploy schemas/dashboard_public/tables/user_rewards/alterations/add_foreign_key_reward_activity_type to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;


ALTER TABLE dashboard_public.user_rewards
    ADD CONSTRAINT fk_dashboard_public_user_rewards_reward_activity_type
    FOREIGN KEY (reward_activity_type)
    REFERENCES dashboard_public.reward_activity_types (activity_type)
    ON DELETE CASCADE;


COMMIT;
