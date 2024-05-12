-- Verify: schemas/dashboard_public/tables/zip_codes/grants/anonymous/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.zip_codes', 'select', 'anonymous');
COMMIT;  

