-- Verify: schemas/dashboard_public/tables/onboarding_questions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.onboarding_questions');
COMMIT;  

