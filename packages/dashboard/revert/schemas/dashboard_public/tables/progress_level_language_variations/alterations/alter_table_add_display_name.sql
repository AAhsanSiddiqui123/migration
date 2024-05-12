-- Revert schemas/dashboard_public/tables/progress_level_language_variations/alterations/alter_table_add_display_name from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations
    DROP COLUMN display_name;

COMMIT;
