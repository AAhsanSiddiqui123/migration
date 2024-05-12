-- Revert: schemas/dashboard_public/tables/onboarding_questions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".onboarding_questions;
COMMIT;  

