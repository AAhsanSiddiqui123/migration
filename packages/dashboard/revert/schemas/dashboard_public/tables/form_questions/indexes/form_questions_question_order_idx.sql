-- Revert: schemas/dashboard_public/tables/form_questions/indexes/form_questions_question_order_idx from pg

BEGIN;
DROP INDEX "dashboard_public".form_questions_question_order_idx;
COMMIT;  

