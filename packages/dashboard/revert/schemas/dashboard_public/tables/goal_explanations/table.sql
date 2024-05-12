-- Revert: schemas/dashboard_public/tables/goal_explanations/table from pg

BEGIN;
DROP TABLE "dashboard_public".goal_explanations;
COMMIT;  

