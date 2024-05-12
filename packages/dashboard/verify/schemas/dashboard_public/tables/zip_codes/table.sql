-- Verify: schemas/dashboard_public/tables/zip_codes/table on pg

BEGIN;
SELECT verify_table('dashboard_public.zip_codes');
COMMIT;  

