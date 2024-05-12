-- Verify schemas/dashboard_public/tables/form_question_language_variations/indexes/form_question_language_variations_form_question_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.form_question_language_variations', 'form_question_language_variations_form_question_id_idx');

ROLLBACK;
