-- Verify: schemas/dashboard_public/tables/form_questions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.form_questions', 'delete', 'authenticated');
COMMIT;  

