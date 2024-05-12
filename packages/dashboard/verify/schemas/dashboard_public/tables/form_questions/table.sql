-- Verify: schemas/dashboard_public/tables/form_questions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.form_questions');
COMMIT;  

