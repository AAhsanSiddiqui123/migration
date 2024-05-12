-- Verify: schemas/dashboard_public/tables/onboarding_questions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.onboarding_questions');
COMMIT;  

