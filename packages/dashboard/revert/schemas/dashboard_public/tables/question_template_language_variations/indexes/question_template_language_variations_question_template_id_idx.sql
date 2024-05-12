-- Revert: schemas/dashboard_public/tables/question_template_language_variations/indexes/question_template_language_variations_question_template_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".question_template_language_variations_question_template_id_idx;
COMMIT;  

