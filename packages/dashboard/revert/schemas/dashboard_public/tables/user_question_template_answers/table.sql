-- Revert schemas/dashboard_public/tables/user_question_template_answers/table from pg

BEGIN;

DROP TABLE dashboard_public.user_question_template_answers;

COMMIT;
