-- Verify: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.onboarding_questions', 'insert', 'authenticated');
COMMIT;  

