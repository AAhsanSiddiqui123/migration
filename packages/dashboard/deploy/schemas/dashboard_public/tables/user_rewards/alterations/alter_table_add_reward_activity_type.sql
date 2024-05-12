-- Deploy schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reward_activity_type to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    ADD COLUMN reward_activity_type user_activity_type NOT NULL;

COMMIT;
