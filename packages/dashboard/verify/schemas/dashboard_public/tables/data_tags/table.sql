-- Verify: schemas/dashboard_public/tables/data_tags/table on pg

BEGIN;
SELECT verify_table('dashboard_public.data_tags');
COMMIT;  

