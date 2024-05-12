-- Revert schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_data from pg

BEGIN;

ALTER TABLE dashboard_public.user_actions
    DROP COLUMN data;

COMMIT;
