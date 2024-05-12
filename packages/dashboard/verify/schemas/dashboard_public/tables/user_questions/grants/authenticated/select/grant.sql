-- Verify: schemas/dashboard_public/tables/user_questions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_questions', 'select', 'authenticated');
COMMIT;  

