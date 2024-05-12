-- Deploy: schemas/dashboard_public/tables/object_types/constraints/object_types_quantity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/quantities/columns/id/column
-- requires: schemas/dashboard_public/tables/object_types/columns/quantity_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_types 
    ADD CONSTRAINT object_types_quantity_id_fkey 
    FOREIGN KEY (quantity_id)
    REFERENCES "dashboard_public".quantities (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
