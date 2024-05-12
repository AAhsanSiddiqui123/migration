-- Verify: schemas/dashboard_public/tables/question_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_types', 'update', 'authenticated');
COMMIT;  

