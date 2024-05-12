-- Deploy: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_fkey/alterations/alt0000001471 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_type_value_language_variations_object_type_value_id_fkey ON "dashboard_public".object_type_value_language_variations IS E'@omit manyToMany';
COMMIT;
