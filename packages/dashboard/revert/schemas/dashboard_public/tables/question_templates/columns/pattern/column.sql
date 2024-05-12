-- Revert: schemas/dashboard_public/tables/question_templates/columns/pattern/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN pattern;
COMMIT;  

