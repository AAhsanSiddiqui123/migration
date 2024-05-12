-- Verify schemas/dashboard_public/tables/form_question_language_variations/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.form_question_language_variations');

ROLLBACK;
