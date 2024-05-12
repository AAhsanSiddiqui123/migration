-- Revert schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_data_tags from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DROP COLUMN data_tags;

COMMIT;
