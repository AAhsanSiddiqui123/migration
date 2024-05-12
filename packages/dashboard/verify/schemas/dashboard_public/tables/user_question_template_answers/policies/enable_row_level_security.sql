-- Verify schemas/dashboard_public/tables/user_question_template_answers/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.user_question_template_answers');

ROLLBACK;
