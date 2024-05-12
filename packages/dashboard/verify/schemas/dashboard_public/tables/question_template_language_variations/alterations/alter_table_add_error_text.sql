-- Verify schemas/dashboard_public/tables/question_template_language_variations/alterations/alter_table_add_error_text  on pg

BEGIN;

SELECT error_text FROM dashboard_public.question_template_language_variations LIMIT 1;

ROLLBACK;
