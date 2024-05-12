-- Revert: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_lang_code_ke/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations 
    DROP CONSTRAINT user_question_language_variations_user_question_id_lang_code_ke;

COMMIT;  

