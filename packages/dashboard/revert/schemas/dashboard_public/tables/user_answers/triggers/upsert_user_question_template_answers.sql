-- Revert schemas/dashboard_public/tables/user_answers/triggers/upsert_user_question_template_answers from pg

BEGIN;

DROP TRIGGER upsert_user_question_template_answers ON dashboard_public.user_answers;
DROP FUNCTION dashboard_private.tg_upsert_user_question_template_answers; 

COMMIT;
