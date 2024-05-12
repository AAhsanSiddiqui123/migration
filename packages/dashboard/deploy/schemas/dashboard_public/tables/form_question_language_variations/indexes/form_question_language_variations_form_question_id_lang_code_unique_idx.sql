-- Deploy dashboard:schemas/dashboard_public/tables/form_question_language_variations/indexes/form_question_language_variations_form_question_id_lang_code_unique_idx to pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    ADD CONSTRAINT fqlv_form_question_id_lang_code_unique_idx UNIQUE (form_question_id,lang_code);

COMMIT;
