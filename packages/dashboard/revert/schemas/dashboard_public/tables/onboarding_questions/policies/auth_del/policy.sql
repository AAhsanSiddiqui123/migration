-- Revert: schemas/dashboard_public/tables/onboarding_questions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".onboarding_questions;
COMMIT;  

