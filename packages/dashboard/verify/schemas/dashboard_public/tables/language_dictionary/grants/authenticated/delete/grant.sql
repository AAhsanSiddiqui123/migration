-- Verify: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.language_dictionary', 'delete', 'authenticated');
COMMIT;  

