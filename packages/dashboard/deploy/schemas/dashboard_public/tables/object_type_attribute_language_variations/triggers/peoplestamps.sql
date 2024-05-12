-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.object_type_attribute_language_variations ADD COLUMN updated_by UUID;

CREATE TRIGGER update_object_type_attribute_language_variations_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.object_type_attribute_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
