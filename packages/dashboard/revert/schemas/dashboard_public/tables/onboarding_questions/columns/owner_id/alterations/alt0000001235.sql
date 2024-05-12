-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/alterations/alt0000001235 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

