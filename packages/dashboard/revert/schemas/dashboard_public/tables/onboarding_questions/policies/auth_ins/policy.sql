-- Revert: schemas/dashboard_public/tables/onboarding_questions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".onboarding_questions;
COMMIT;  

