-- Verify: schemas/dashboard_private/trigger_fns/onboarding_questions_denorm_question_id on pg

BEGIN;
SELECT verify_function('dashboard_private.onboarding_questions_denorm_question_id');
COMMIT;  

