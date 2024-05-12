-- Revert schemas/dashboard_public/tables/actions/alterations/alter_table_add_reward_amount_text from pg

BEGIN;

ALTER TABLE dashboard_public.actions
    DROP COLUMN reward_amount_text;

COMMIT;
