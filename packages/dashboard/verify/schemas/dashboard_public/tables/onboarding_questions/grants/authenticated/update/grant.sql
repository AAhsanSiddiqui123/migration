-- Verify: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.onboarding_questions', 'update', 'authenticated');
COMMIT;  

