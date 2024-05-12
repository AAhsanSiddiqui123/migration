-- Verify: schemas/dashboard_public/tables/onboarding_questions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.onboarding_questions');
COMMIT;  

