-- Verify: schemas/dashboard_public/tables/zip_codes/indexes/zip_codes_zip_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.zip_codes', 'zip_codes_zip_idx');
COMMIT;  

