-- Verify: schemas/dashboard_public/tables/object_records/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_records', 'insert', 'authenticated');
COMMIT;  

