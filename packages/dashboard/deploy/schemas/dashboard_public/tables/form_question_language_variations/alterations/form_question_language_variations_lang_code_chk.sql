-- Deploy dashboard:schemas/dashboard_public/tables/form_question_language_variations/alterations/form_question_language_variations_lang_code_chk to pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations ADD CONSTRAINT form_question_language_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);

COMMIT;
