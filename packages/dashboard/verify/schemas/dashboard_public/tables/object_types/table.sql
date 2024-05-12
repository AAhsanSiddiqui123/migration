-- Verify: schemas/dashboard_public/tables/object_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.object_types');
COMMIT;  

