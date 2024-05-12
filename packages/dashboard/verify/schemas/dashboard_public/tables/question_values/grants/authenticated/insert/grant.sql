-- Verify: schemas/dashboard_public/tables/question_values/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_values', 'insert', 'authenticated');
COMMIT;  

