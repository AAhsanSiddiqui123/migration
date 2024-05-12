-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN id;
COMMIT;  

