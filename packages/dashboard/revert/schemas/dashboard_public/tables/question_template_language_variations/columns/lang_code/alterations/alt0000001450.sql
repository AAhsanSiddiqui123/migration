-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/lang_code/alterations/alt0000001450 from pg

BEGIN;
ALTER TABLE "dashboard_public".question_template_language_variations DROP CONSTRAINT question_template_language_variations_lang_code_chk;
COMMIT;  

