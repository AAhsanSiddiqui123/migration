-- Revert: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_lang/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations 
    DROP CONSTRAINT question_template_language_variations_question_template_id_lang;

COMMIT;  

