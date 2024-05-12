-- Verify: schemas/dashboard_public/tables/object_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_types', 'update', 'authenticated');
COMMIT;  

