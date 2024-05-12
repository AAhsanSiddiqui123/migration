-- Verify: schemas/dashboard_public/tables/question_templates/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_templates', 'select', 'authenticated');
COMMIT;  

