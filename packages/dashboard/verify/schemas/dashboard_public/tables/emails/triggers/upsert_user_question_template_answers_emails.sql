-- Verify schemas/dashboard_public/tables/emails/triggers/upsert_user_question_template_answers_emails  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_upsert_user_question_template_answers_emails'); 
SELECT verify_trigger ('dashboard_public.upsert_user_question_template_answers_emails');

ROLLBACK;
