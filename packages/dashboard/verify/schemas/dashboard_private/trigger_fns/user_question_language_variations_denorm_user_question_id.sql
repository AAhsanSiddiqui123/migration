-- Verify: schemas/dashboard_private/trigger_fns/user_question_language_variations_denorm_user_question_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_question_language_variations_denorm_user_question_id');
COMMIT;  

