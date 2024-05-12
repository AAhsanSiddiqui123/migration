-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_parent_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/id/column
-- requires: schemas/dashboard_public/tables/goals/columns/parent_id/column

BEGIN;

ALTER TABLE "dashboard_public".goals 
    ADD CONSTRAINT goals_parent_id_fkey 
    FOREIGN KEY (parent_id)
    REFERENCES "dashboard_public".goals (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
