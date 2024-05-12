-- Revert: schemas/dashboard_public/tables/action_goals/columns/goal_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN goal_id;
COMMIT;  

