-- Revert: schemas/dashboard_private/trigger_fns/onboarding_questions_denorm_question_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".onboarding_questions_denorm_question_id;
COMMIT;  

