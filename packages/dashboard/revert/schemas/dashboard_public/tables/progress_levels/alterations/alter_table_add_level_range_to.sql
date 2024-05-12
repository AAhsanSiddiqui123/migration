-- Revert schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_level_range_to from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DROP COLUMN level_range_to;

COMMIT;
