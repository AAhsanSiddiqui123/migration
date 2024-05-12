-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_lang_code_key/alterations/alt0000001480 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_lang_code_key/constraint

BEGIN;
COMMENT ON CONSTRAINT object_type_language_variations_object_type_id_lang_code_key ON "dashboard_public".object_type_language_variations IS E'@omit';
COMMIT;
