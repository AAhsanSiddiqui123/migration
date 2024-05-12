-- Revert: schemas/dashboard_public/tables/question_templates/columns/label/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN label;
COMMIT;  

