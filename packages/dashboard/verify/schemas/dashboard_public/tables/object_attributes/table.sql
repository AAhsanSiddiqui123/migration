-- Verify: schemas/dashboard_public/tables/object_attributes/table on pg

BEGIN;
SELECT verify_table('dashboard_public.object_attributes');
COMMIT;  

