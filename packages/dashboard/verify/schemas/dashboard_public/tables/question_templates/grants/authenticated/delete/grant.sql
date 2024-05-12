-- Verify: schemas/dashboard_public/tables/question_templates/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_templates', 'delete', 'authenticated');
COMMIT;  

