-- Revert: schemas/dashboard_public/tables/question_templates/columns/question_prompt/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN question_prompt;
COMMIT;  

