-- Verify: schemas/dashboard_private/trigger_fns/question_value_language_variations_denorm_question_value_id on pg

BEGIN;
SELECT verify_function('dashboard_private.question_value_language_variations_denorm_question_value_id');
COMMIT;  

