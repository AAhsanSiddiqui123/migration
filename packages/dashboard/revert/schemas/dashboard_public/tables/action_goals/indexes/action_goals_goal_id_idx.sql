-- Revert: schemas/dashboard_public/tables/action_goals/indexes/action_goals_goal_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_goals_goal_id_idx;
COMMIT;  

