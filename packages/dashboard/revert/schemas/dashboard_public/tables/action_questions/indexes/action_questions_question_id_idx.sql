-- Revert: schemas/dashboard_public/tables/action_questions/indexes/action_questions_question_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_questions_question_id_idx;
COMMIT;  

