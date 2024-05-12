-- Revert schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_description from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DROP COLUMN description;

COMMIT;
