-- Verify: schemas/dashboard_public/tables/object_records/table on pg

BEGIN;
SELECT verify_table('dashboard_public.object_records');
COMMIT;  

