-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/alterations/alter_table_add_name to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    ADD COLUMN name citext NULL;

COMMIT;
