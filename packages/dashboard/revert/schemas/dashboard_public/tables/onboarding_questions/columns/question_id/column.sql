-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/question_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN question_id;
COMMIT;  

