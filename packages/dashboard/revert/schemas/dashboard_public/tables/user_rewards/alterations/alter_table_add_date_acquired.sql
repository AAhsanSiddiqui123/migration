-- Revert schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_date_acquired from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    DROP COLUMN date_acquired;

COMMIT;
