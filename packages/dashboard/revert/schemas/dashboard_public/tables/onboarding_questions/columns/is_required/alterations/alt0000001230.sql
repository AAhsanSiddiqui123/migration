-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/alterations/alt0000001230 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".onboarding_questions.is_required IS NULL;
COMMIT;  

