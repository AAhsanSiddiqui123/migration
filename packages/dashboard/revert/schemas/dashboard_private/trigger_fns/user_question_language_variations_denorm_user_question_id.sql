-- Revert: schemas/dashboard_private/trigger_fns/user_question_language_variations_denorm_user_question_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_question_language_variations_denorm_user_question_id;
COMMIT;  

