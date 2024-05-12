-- Revert: schemas/dashboard_public/tables/goal_explanations/constraints/goal_explanations_goal_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations 
    DROP CONSTRAINT goal_explanations_goal_id_fkey;

COMMIT;  

