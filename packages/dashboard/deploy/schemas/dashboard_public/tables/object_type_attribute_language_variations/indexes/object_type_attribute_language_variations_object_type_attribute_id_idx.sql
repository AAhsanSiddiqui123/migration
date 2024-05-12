-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/indexes/object_type_attribute_language_variations_object_type_attribute_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table

BEGIN;

CREATE INDEX oalv_object_type_attribute_id_idx ON dashboard_public.object_type_attribute_language_variations (
 object_type_attribute_id
);

COMMIT;
