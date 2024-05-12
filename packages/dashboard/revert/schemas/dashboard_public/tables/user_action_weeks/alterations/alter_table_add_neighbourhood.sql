-- Revert schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_neighbourhood from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP COLUMN neighbourhood;

COMMIT;
