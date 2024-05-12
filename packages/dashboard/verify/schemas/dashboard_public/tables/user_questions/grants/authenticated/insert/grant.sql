-- Verify: schemas/dashboard_public/tables/user_questions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_questions', 'insert', 'authenticated');
COMMIT;  

