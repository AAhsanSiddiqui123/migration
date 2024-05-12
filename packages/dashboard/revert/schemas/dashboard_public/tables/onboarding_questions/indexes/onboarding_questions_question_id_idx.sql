-- Revert: schemas/dashboard_public/tables/onboarding_questions/indexes/onboarding_questions_question_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".onboarding_questions_question_id_idx;
COMMIT;  

