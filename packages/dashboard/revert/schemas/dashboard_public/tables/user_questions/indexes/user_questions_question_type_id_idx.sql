-- Revert: schemas/dashboard_public/tables/user_questions/indexes/user_questions_question_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_questions_question_type_id_idx;
COMMIT;  

