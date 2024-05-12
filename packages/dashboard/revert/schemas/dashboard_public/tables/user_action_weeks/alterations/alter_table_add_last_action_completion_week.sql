-- Revert schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_last_action_week from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP COLUMN last_action_completion_week;

COMMIT;
