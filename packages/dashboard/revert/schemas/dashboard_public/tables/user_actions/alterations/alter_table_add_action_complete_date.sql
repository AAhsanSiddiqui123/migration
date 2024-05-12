-- Revert schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_action_date from pg

BEGIN;

ALTER TABLE dashboard_public.user_actions
    DROP COLUMN action_complete_date;

COMMIT;
