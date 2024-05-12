-- Verify schemas/dashboard_public/tables/user_question_template_answers/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.user_question_template_answers');


ROLLBACK;
