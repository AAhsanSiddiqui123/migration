-- Verify dashboard:schemas/dashboard_public/tables/form_question_language_variations/indexes/form_question_language_variations_form_question_id_lang_code_unique_idx on pg

BEGIN;

SELECT verify_index ('dashboard_public.form_question_language_variations', 'fqlv_form_question_id_lang_code_unique_idx');

ROLLBACK;
