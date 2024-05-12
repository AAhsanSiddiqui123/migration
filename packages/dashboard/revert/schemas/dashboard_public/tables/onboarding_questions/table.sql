-- Revert: schemas/dashboard_public/tables/onboarding_questions/table from pg

BEGIN;
DROP TABLE "dashboard_public".onboarding_questions;
COMMIT;  

