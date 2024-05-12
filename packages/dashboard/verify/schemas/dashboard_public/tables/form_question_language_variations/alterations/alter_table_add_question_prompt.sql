-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_question_prompt  on pg

BEGIN;

SELECT question_prompt FROM dashboard_public.form_question_language_variations LIMIT 1;

ROLLBACK;
