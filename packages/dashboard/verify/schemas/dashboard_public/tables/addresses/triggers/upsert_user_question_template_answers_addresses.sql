-- Verify schemas/dashboard_public/tables/addresses/triggers/upsert_user_question_template_answers_addresses  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_upsert_user_question_template_answers_addresses'); 
SELECT verify_trigger ('dashboard_public.upsert_user_question_template_answers_addresses');

ROLLBACK;
