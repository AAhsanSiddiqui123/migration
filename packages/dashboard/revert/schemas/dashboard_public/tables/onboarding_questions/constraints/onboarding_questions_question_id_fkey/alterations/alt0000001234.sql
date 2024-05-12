-- Revert: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_question_id_fkey/alterations/alt0000001234 from pg

BEGIN;
COMMENT ON CONSTRAINT onboarding_questions_question_id_fkey ON "dashboard_public".onboarding_questions IS NULL;
COMMIT;  

