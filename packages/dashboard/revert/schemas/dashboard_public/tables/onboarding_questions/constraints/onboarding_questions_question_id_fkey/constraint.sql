-- Revert: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_question_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    DROP CONSTRAINT onboarding_questions_question_id_fkey;

COMMIT;  

