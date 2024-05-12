-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/question_id/alterations/alt0000001233 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN question_id DROP NOT NULL;


COMMIT;  

