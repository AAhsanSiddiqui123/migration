-- Verify schemas/dashboard_public/tables/user_question_template_answers/policies/auth_sel  on pg

BEGIN;

SELECT verify_policy ('auth_sel', 'dashboard_public.user_question_template_answers');


ROLLBACK;
