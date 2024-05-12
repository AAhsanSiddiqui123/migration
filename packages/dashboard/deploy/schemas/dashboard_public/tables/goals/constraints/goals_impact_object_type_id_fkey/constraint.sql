-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_impact_object_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/id/column
-- requires: schemas/dashboard_public/tables/goals/columns/impact_object_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".goals 
    ADD CONSTRAINT goals_impact_object_type_id_fkey 
    FOREIGN KEY (impact_object_type_id)
    REFERENCES "dashboard_public".object_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
