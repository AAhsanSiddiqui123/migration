-- Revert: schemas/dashboard_public/tables/form_questions/columns/question_prompt/alterations/alt0000001349 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".form_questions.question_prompt IS NULL;
COMMIT;  

