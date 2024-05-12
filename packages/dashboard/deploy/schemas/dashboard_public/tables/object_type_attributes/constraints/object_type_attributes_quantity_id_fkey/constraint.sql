-- Deploy: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_quantity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/quantities/columns/id/column
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/quantity_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes 
    ADD CONSTRAINT object_type_attributes_quantity_id_fkey 
    FOREIGN KEY (quantity_id)
    REFERENCES "dashboard_public".quantities (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
