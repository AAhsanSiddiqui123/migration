-- Verify: schemas/dashboard_public/tables/question_types/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_types', 'insert', 'authenticated');
COMMIT;  

