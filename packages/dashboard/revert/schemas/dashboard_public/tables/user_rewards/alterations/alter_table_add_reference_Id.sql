-- Revert schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_reference_Id from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP COLUMN reference_Id;

COMMIT;
