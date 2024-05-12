-- Verify: schemas/dashboard_public/tables/language_dictionary/table on pg

BEGIN;
SELECT verify_table('dashboard_public.language_dictionary');
COMMIT;  

