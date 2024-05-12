-- Verify: schemas/dashboard_public/tables/form_questions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.form_questions', 'select', 'authenticated');
COMMIT;  

