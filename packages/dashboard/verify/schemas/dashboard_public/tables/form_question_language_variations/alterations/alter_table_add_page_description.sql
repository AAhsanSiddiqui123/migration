-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_page_description  on pg

BEGIN;

SELECT page_description FROM dashboard_public.form_question_language_variations LIMIT 1;

ROLLBACK;
