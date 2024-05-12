-- Revert: schemas/dashboard_public/tables/question_values/indexes/question_values_question_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".question_values_question_id_idx;
COMMIT;  

