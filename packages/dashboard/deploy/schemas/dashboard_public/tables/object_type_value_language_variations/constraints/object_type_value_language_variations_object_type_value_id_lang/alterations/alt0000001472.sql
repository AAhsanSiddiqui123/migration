-- Deploy: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_lang/alterations/alt0000001472 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_lang/constraint

BEGIN;
COMMENT ON CONSTRAINT object_type_value_language_variations_object_type_value_id_lang ON "dashboard_public".object_type_value_language_variations IS E'@omit';
COMMIT;
