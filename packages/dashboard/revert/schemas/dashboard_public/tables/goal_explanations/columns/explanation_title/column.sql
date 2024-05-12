-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/explanation_title/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN explanation_title;
COMMIT;  

