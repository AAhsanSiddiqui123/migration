-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_form_question_id  on pg

BEGIN;

SELECT form_question_id FROM dashboard_public.form_question_language_variations LIMIT 1;

ROLLBACK;
