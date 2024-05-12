-- Verify: schemas/dashboard_public/tables/global_languages/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.global_languages', 'delete', 'authenticated');
COMMIT;  

