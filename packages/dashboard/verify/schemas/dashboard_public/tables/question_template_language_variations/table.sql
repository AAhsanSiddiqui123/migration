-- Verify: schemas/dashboard_public/tables/question_template_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.question_template_language_variations');
COMMIT;  

