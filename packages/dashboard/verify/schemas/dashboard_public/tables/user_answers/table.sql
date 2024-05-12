-- Verify: schemas/dashboard_public/tables/user_answers/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_answers');
COMMIT;  

