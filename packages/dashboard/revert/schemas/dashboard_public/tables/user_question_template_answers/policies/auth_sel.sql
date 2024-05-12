-- Revert schemas/dashboard_public/tables/user_question_template_answers/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.user_question_template_answers;

COMMIT;
