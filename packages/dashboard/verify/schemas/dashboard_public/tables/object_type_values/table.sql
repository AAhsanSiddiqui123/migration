-- Verify: schemas/dashboard_public/tables/object_type_values/table on pg

BEGIN;
SELECT verify_table('dashboard_public.object_type_values');
COMMIT;  

