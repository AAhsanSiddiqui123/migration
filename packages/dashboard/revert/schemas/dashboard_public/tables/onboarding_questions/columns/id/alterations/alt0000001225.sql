-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/id/alterations/alt0000001225 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

