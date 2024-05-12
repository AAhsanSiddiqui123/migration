-- Revert schemas/dashboard_public/tables/user_question_template_answers/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.user_question_template_answers;

COMMIT;
