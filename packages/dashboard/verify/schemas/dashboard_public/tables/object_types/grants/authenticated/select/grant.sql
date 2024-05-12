-- Verify: schemas/dashboard_public/tables/object_types/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_types', 'select', 'authenticated');
COMMIT;  

