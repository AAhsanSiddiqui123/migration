-- Verify: schemas/dashboard_public/tables/onboarding_questions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.onboarding_questions');
COMMIT;  

