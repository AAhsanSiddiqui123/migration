-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/id/alterations/alt0000000753 from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

