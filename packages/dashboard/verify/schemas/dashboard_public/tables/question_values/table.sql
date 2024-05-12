-- Verify: schemas/dashboard_public/tables/question_values/table on pg

BEGIN;
SELECT verify_table('dashboard_public.question_values');
COMMIT;  

