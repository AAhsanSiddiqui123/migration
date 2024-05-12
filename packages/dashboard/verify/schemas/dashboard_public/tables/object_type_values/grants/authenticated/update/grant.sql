-- Verify: schemas/dashboard_public/tables/object_type_values/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_type_values', 'update', 'authenticated');
COMMIT;  

