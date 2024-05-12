-- Verify: schemas/dashboard_public/tables/user_question_language_variations/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_question_language_variations', 'select', 'authenticated');
COMMIT;  

