-- Deploy: schemas/dashboard_public/tables/object_type_value_language_variations/constraints/object_type_value_language_variations_object_type_value_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/id/column
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/table
-- requires: schemas/dashboard_public/tables/object_type_value_language_variations/columns/object_type_value_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_language_variations 
    ADD CONSTRAINT object_type_value_language_variations_object_type_value_id_fkey 
    FOREIGN KEY (object_type_value_id)
    REFERENCES "dashboard_public".object_type_values (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
