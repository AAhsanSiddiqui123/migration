-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN owner_id;
COMMIT;  

