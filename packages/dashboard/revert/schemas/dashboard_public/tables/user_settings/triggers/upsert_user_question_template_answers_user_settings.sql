-- Revert schemas/dashboard_public/tables/user_settings/triggers/upsert_user_question_template_answers_user_settings from pg

BEGIN;

DROP TRIGGER upsert_user_question_template_answers_user_settings ON dashboard_public.user_settings;
DROP FUNCTION dashboard_private.tg_upsert_user_question_template_answers_user_settings; 

COMMIT;
