-- Revert: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".onboarding_questions FROM authenticated;
COMMIT;  

