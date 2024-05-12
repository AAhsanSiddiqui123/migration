-- Revert schemas/dashboard_public/tables/actions/alterations/alter_table_add_name from pg

BEGIN;

ALTER TABLE dashboard_public.actions
    DROP COLUMN name;

COMMIT;
