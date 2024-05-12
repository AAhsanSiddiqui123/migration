-- Deploy schemas/dashboard_public/tables/language_dictionary/alterations/alter_table_add_image to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE dashboard_public.language_dictionary
    ADD COLUMN image image NULL;

COMMIT;
