-- Verify: schemas/dashboard_public/tables/user_question_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_question_language_variations');
COMMIT;  

