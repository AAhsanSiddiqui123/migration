-- Verify: schemas/dashboard_public/tables/question_template_language_variations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.question_template_language_variations', 'insert', 'authenticated');
COMMIT;  

