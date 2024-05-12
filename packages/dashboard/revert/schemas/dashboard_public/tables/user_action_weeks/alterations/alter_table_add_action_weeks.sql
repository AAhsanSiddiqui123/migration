-- Revert schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_action_weeks from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP COLUMN action_weeks;

COMMIT;
