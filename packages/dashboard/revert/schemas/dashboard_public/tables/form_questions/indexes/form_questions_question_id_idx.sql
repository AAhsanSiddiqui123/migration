-- Revert: schemas/dashboard_public/tables/form_questions/indexes/form_questions_question_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".form_questions_question_id_idx;
COMMIT;  

