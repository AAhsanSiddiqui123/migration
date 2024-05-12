-- Verify: schemas/dashboard_public/tables/question_templates/table on pg

BEGIN;
SELECT verify_table('dashboard_public.question_templates');
COMMIT;  

