-- Deploy: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_unit_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column
-- requires: schemas/dashboard_public/tables/object_attributes/columns/unit_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ADD CONSTRAINT object_attributes_unit_id_fkey 
    FOREIGN KEY (unit_id)
    REFERENCES "dashboard_public".units (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
