-- Verify: schemas/dashboard_public/tables/user_questions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_questions', 'update', 'authenticated');
COMMIT;  

