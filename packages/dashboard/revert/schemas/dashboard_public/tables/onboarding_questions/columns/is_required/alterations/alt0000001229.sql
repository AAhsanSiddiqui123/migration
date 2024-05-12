-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/alterations/alt0000001229 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

