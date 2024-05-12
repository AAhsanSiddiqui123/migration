-- Revert schemas/dashboard_public/tables/data_tag_language_variations/alterations/alter_table_add_name from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    DROP COLUMN name;

COMMIT;
