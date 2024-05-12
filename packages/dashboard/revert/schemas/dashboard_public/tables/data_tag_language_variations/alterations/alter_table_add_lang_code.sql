-- Revert schemas/dashboard_public/tables/data_tag_language_variations/alterations/alter_table_add_lang_code from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    DROP COLUMN lang_code;

COMMIT;
