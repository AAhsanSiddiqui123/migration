-- Deploy: schemas/dashboard_public/tables/group_goals/constraints/group_goals_impact_unit_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/group_goals/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column
-- requires: schemas/dashboard_public/tables/group_goals/columns/impact_unit_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_goals 
    ADD CONSTRAINT group_goals_impact_unit_id_fkey 
    FOREIGN KEY (impact_unit_id)
    REFERENCES "dashboard_public".units (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
