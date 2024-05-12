-- Verify: schemas/dashboard_public/tables/object_records/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_records', 'select', 'authenticated');
COMMIT;  

