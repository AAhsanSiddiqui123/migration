-- Verify: schemas/dashboard_public/tables/question_types/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_types', 'delete', 'authenticated');
COMMIT;  

