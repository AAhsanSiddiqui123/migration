-- Verify schemas/dashboard_public/procedures/duplicate_question_value_language_variations  on pg

BEGIN;

SELECT verify_function ('dashboard_public.duplicate_question_value_language_variations');

ROLLBACK;
