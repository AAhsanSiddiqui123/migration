-- Revert schemas/dashboard_public/tables/user_question_template_answers/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.user_question_template_answers;

COMMIT;
