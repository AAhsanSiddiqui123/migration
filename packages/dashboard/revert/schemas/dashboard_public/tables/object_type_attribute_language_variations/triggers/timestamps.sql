-- Revert schemas/dashboard_public/tables/object_type_attribute_language_variations/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations DROP COLUMN created_at;
ALTER TABLE dashboard_public.object_type_attribute_language_variations DROP COLUMN updated_at;
DROP TRIGGER update_object_type_attribute_language_variations_modtime ON dashboard_public.object_type_attribute_language_variations;

COMMIT;
