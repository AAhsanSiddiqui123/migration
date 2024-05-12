-- Verify schemas/dashboard_public/procedures/duplicate_question_values_by_question_template  on pg

BEGIN;

SELECT verify_function ('dashboard_public.duplicate_question_values_by_question_template');

ROLLBACK;
