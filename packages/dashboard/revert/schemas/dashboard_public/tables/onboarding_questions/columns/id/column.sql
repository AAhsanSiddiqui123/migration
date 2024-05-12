-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN id;
COMMIT;  

