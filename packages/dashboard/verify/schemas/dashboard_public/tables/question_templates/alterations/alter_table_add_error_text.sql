-- Verify schemas/dashboard_public/tables/question_templates/alterations/alter_table_add_error_text  on pg

BEGIN;

SELECT error_text FROM dashboard_public.question_templates LIMIT 1;

ROLLBACK;
