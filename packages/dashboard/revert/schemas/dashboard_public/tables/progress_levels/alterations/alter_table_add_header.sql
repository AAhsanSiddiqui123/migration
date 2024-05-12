-- Revert schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_header from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DROP COLUMN header;

COMMIT;
