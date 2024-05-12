-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/add_foreign_key_object_type_attribute_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;


ALTER TABLE dashboard_public.object_type_attribute_language_variations
    ADD CONSTRAINT fk_otalv_object_type_attribute_id
    FOREIGN KEY (object_type_attribute_id)
    REFERENCES dashboard_public.object_type_attributes (id)
    ON DELETE CASCADE;


COMMIT;
