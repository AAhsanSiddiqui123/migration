-- Verify: schemas/dashboard_public/tables/question_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.question_types');
COMMIT;  

