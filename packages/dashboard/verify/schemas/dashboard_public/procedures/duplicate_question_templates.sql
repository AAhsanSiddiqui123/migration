-- Verify schemas/dashboard_public/procedures/duplicate_question_templates  on pg

BEGIN;

SELECT verify_function ('dashboard_public.duplicate_question_templates');

ROLLBACK;
