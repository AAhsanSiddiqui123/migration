-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/id/alterations/alt0000001226 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

