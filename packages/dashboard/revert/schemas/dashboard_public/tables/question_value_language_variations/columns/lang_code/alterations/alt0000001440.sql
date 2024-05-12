-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/lang_code/alterations/alt0000001440 from pg

BEGIN;
ALTER TABLE "dashboard_public".question_value_language_variations DROP CONSTRAINT question_value_language_variations_lang_code_chk;
COMMIT;  

