-- Revert schemas/dashboard_public/tables/user_question_template_answers/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers DROP COLUMN created_by;
ALTER TABLE dashboard_public.user_question_template_answers DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_user_question_template_answers_moduser ON dashboard_public.user_question_template_answers;

COMMIT;
