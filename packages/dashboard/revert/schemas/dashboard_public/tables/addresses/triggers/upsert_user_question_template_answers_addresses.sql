-- Revert schemas/dashboard_public/tables/addresses/triggers/upsert_user_question_template_answers_addresses from pg

BEGIN;

DROP TRIGGER upsert_user_question_template_answers_addresses ON dashboard_public.addresses;
DROP FUNCTION dashboard_private.tg_upsert_user_question_template_answers_addresses; 

COMMIT;
