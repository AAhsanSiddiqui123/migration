-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/lang_code/alterations/alt0000001429 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_question_language_variations DROP CONSTRAINT user_question_language_variations_lang_code_chk;
COMMIT;  

