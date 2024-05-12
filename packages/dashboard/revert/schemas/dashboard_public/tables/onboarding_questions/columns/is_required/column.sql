-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN is_required;
COMMIT;  

