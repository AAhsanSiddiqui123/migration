-- Verify: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.language_dictionary', 'update', 'authenticated');
COMMIT;  

