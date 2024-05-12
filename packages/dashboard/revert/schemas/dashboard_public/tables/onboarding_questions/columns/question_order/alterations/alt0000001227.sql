-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/question_order/alterations/alt0000001227 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN question_order DROP DEFAULT;

COMMIT;  

