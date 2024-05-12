-- Verify: schemas/dashboard_public/tables/question_value_language_variations/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_value_language_variations', 'update', 'authenticated');
COMMIT;  

