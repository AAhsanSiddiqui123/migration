-- Verify: schemas/dashboard_public/tables/object_attributes/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_attributes', 'select', 'authenticated');
COMMIT;  

