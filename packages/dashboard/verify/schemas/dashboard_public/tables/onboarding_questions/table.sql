-- Verify: schemas/dashboard_public/tables/onboarding_questions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.onboarding_questions');
COMMIT;  

