-- Revert schemas/dashboard_public/tables/emails/triggers/upsert_user_question_template_answers_emails from pg

BEGIN;

DROP TRIGGER upsert_user_question_template_answers_emails ON dashboard_public.emails;
DROP FUNCTION dashboard_private.tg_upsert_user_question_template_answers_emails; 

COMMIT;
