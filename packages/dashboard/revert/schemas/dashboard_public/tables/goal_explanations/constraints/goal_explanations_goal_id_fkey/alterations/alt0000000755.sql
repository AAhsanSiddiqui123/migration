-- Revert: schemas/dashboard_public/tables/goal_explanations/constraints/goal_explanations_goal_id_fkey/alterations/alt0000000755 from pg

BEGIN;
COMMENT ON CONSTRAINT goal_explanations_goal_id_fkey ON "dashboard_public".goal_explanations IS NULL;
COMMIT;  

