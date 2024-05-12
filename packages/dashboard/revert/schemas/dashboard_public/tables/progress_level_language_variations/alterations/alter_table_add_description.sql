-- Revert schemas/dashboard_public/tables/progress_level_language_variations/alterations/alter_table_add_description from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations
    DROP COLUMN description;

COMMIT;
