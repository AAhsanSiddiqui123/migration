-- Deploy: schemas/dashboard_public/tables/action_goals/indexes/action_goals_goal_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table
-- requires: schemas/dashboard_public/tables/action_goals/columns/goal_id/column

BEGIN;
CREATE INDEX action_goals_goal_id_idx ON "dashboard_public".action_goals (goal_id);
COMMIT;
