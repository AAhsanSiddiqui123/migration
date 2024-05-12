-- Verify: schemas/dashboard_public/tables/object_type_values/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_type_values', 'select', 'authenticated');
COMMIT;  

