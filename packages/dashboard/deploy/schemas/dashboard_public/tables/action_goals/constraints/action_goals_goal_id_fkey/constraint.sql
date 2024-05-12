-- Deploy: schemas/dashboard_public/tables/action_goals/constraints/action_goals_goal_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/action_goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/id/column
-- requires: schemas/dashboard_public/tables/action_goals/columns/goal_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_goals 
    ADD CONSTRAINT action_goals_goal_id_fkey 
    FOREIGN KEY (goal_id)
    REFERENCES "dashboard_public".goals (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
