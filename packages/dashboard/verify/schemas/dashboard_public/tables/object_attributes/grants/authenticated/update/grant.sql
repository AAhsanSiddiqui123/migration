-- Verify: schemas/dashboard_public/tables/object_attributes/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_attributes', 'update', 'authenticated');
COMMIT;  

