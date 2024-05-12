-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_object_type_attribute_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations
    ADD COLUMN object_type_attribute_id uuid NOT NULL;

COMMIT;
