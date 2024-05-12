-- Deploy: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_value_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/id/column
-- requires: schemas/dashboard_public/tables/object_attributes/columns/value_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ADD CONSTRAINT object_attributes_value_id_fkey 
    FOREIGN KEY (value_id)
    REFERENCES "dashboard_public".object_type_values (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
