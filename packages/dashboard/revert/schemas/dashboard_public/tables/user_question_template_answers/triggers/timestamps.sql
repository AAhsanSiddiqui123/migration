-- Revert schemas/dashboard_public/tables/user_question_template_answers/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers DROP COLUMN created_at;
ALTER TABLE dashboard_public.user_question_template_answers DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_user_question_template_answers_modtime ON dashboard_public.user_question_template_answers;

COMMIT;
