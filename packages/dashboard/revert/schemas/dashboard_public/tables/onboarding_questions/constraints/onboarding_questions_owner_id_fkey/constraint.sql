-- Revert: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    DROP CONSTRAINT onboarding_questions_owner_id_fkey;

COMMIT;  

