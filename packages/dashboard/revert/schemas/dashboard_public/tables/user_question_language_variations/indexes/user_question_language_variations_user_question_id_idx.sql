-- Revert: schemas/dashboard_public/tables/user_question_language_variations/indexes/user_question_language_variations_user_question_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_question_language_variations_user_question_id_idx;
COMMIT;  

