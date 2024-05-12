-- Revert: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".onboarding_questions FROM authenticated;
COMMIT;  

