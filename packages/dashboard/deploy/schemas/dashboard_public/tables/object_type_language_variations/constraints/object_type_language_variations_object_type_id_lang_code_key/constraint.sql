-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_lang_code_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_language_variations
    ADD CONSTRAINT object_type_language_variations_object_type_id_lang_code_key UNIQUE (object_type_id,lang_code);
COMMIT;
