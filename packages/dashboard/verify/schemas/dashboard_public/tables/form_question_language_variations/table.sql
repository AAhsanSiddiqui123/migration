-- Verify schemas/dashboard_public/tables/form_question_language_variations/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.form_question_language_variations');

ROLLBACK;
