-- Deploy: schemas/dashboard_public/tables/object_type_values/constraints/object_type_values_attr_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/id/column
-- requires: schemas/dashboard_public/tables/object_type_values/columns/attr_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_values 
    ADD CONSTRAINT object_type_values_attr_id_fkey 
    FOREIGN KEY (attr_id)
    REFERENCES "dashboard_public".object_type_attributes (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
