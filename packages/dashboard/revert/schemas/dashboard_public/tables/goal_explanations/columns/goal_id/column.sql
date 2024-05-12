-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN goal_id;
COMMIT;  

