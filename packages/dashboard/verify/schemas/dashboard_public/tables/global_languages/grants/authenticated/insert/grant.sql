-- Verify: schemas/dashboard_public/tables/global_languages/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.global_languages', 'insert', 'authenticated');
COMMIT;  

