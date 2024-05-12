-- Verify schemas/dashboard_public/tables/user_answers/triggers/upsert_user_question_template_answers  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_upsert_user_question_template_answers'); 
SELECT verify_trigger ('dashboard_public.upsert_user_question_template_answers');

ROLLBACK;
