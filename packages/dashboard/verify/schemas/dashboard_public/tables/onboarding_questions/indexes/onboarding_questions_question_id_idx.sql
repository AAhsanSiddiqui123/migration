-- Verify: schemas/dashboard_public/tables/onboarding_questions/indexes/onboarding_questions_question_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.onboarding_questions', 'onboarding_questions_question_id_idx');
COMMIT;  

