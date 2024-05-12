-- Verify: schemas/dashboard_public/tables/user_questions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_questions', 'delete', 'authenticated');
COMMIT;  

