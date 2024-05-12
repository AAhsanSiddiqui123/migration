-- Revert schemas/dashboard_public/tables/user_rewards/alterations/add_foreign_key_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP CONSTRAINT fk_dashboard_public_user_rewards_user_id;

COMMIT;
