-- Revert schemas/dashboard_public/tables/user_question_template_answers/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.user_question_template_answers;

COMMIT;
