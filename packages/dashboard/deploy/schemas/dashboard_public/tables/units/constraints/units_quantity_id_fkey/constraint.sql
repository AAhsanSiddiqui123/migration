-- Deploy: schemas/dashboard_public/tables/units/constraints/units_quantity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/quantities/table
-- requires: schemas/dashboard_public/tables/quantities/columns/id/column
-- requires: schemas/dashboard_public/tables/units/columns/quantity_id/column

BEGIN;

ALTER TABLE "dashboard_public".units 
    ADD CONSTRAINT units_quantity_id_fkey 
    FOREIGN KEY (quantity_id)
    REFERENCES "dashboard_public".quantities (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
