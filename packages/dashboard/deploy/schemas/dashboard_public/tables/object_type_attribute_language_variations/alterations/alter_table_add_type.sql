-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_type to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations
    ADD COLUMN type text NULL;

COMMIT;
