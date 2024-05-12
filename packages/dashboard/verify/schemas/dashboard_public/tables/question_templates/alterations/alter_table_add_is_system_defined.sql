-- Verify schemas/dashboard_public/tables/question_templates/alterations/alter_table_add_is_system_defined  on pg

BEGIN;

SELECT is_system_defined FROM dashboard_public.question_templates LIMIT 1;

ROLLBACK;
