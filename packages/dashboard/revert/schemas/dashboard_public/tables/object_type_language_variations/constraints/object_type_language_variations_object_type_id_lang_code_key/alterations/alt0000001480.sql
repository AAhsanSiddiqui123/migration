-- Revert: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_lang_code_key/alterations/alt0000001480 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_language_variations_object_type_id_lang_code_key ON "dashboard_public".object_type_language_variations IS NULL;
COMMIT;  

