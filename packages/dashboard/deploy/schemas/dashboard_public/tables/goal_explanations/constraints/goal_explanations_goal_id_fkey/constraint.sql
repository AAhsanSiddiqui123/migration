-- Deploy: schemas/dashboard_public/tables/goal_explanations/constraints/goal_explanations_goal_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goals/columns/id/column
-- requires: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/column

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations 
    ADD CONSTRAINT goal_explanations_goal_id_fkey 
    FOREIGN KEY (goal_id)
    REFERENCES "dashboard_public".goals (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
