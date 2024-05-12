-- Verify schemas/dashboard_public/tables/user_settings/triggers/upsert_user_question_template_answers_user_settings  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_upsert_user_question_template_answers_user_settings'); 
SELECT verify_trigger ('dashboard_public.upsert_user_question_template_answers_user_settings');

ROLLBACK;
