-- Verify: schemas/dashboard_public/tables/user_questions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_questions');
COMMIT;  

