-- Revert: schemas/dashboard_public/tables/goal_explanations/indexes/goal_explanations_goal_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".goal_explanations_goal_id_idx;
COMMIT;  

