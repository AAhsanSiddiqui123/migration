-- Revert: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".onboarding_questions FROM authenticated;
COMMIT;  

