-- Revert: schemas/dashboard_public/tables/onboarding_questions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".onboarding_questions;
COMMIT;  

