-- Verify: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.language_dictionary', 'select', 'authenticated');
COMMIT;  

