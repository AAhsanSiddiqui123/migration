-- Deploy: schemas/dashboard_public/tables/action_goals/constraints/action_goals_action_id_goal_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;

ALTER TABLE "dashboard_public".action_goals
    ADD CONSTRAINT action_goals_action_id_goal_id_key UNIQUE (action_id,goal_id);
COMMIT;
