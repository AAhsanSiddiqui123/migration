-- Revert: schemas/dashboard_public/tables/question_templates/columns/min/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN min;
COMMIT;  

