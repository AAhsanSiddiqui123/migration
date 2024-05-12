-- Revert schemas/dashboard_public/tables/user_question_template_answers/indexes/user_question_template_answers_user_id_template_id from pg

BEGIN;

DROP INDEX dashboard_public.user_question_template_answers_user_id_template_id;

COMMIT;
