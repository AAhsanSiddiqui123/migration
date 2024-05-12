-- Deploy: schemas/dashboard_public/tables/impacts/constraints/impacts_per_unit_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column
-- requires: schemas/dashboard_public/tables/impacts/columns/per_unit_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts 
    ADD CONSTRAINT impacts_per_unit_id_fkey 
    FOREIGN KEY (per_unit_id)
    REFERENCES "dashboard_public".units (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
