-- Revert: schemas/dashboard_private/trigger_fns/question_value_language_variations_denorm_question_value_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".question_value_language_variations_denorm_question_value_id;
COMMIT;  

