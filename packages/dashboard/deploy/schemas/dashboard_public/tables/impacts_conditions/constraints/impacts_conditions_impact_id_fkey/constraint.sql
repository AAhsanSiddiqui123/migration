-- Deploy: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_impact_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts/columns/id/column
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/impact_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ADD CONSTRAINT impacts_conditions_impact_id_fkey 
    FOREIGN KEY (impact_id)
    REFERENCES "dashboard_public".impacts (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
