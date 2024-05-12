-- Revert: schemas/dashboard_private/trigger_fns/user_answers_denorm_question_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_answers_denorm_question_id;
COMMIT;  

