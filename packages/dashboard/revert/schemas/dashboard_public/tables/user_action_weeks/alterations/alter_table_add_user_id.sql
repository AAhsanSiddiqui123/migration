-- Revert schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP COLUMN user_id;

COMMIT;
