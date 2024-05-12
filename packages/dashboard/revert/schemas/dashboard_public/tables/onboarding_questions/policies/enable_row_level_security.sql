-- Revert: schemas/dashboard_public/tables/onboarding_questions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

