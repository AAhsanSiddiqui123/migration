-- Deploy: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_lang/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_language_variations
    ADD CONSTRAINT object_type_value_language_variations_object_type_value_id_lang UNIQUE (object_type_value_id,lang_code);
COMMIT;
