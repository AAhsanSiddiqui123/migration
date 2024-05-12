-- Revert: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".onboarding_questions FROM authenticated;
COMMIT;  

