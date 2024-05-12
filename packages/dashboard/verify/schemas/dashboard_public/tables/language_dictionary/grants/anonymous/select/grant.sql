-- Verify: schemas/dashboard_public/tables/language_dictionary/grants/anonymous/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.language_dictionary', 'select', 'anonymous');
COMMIT;  

