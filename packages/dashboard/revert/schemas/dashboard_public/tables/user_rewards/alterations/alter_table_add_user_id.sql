-- Revert schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP COLUMN user_id;

COMMIT;
