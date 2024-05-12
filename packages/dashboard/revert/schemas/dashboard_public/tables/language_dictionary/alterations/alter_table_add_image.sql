-- Revert schemas/dashboard_public/tables/language_dictionary/alterations/alter_table_add_image from pg

BEGIN;

ALTER TABLE dashboard_public.language_dictionary
    DROP COLUMN image;

COMMIT;
