-- Verify: schemas/dashboard_public/tables/object_attributes/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_attributes', 'insert', 'authenticated');
COMMIT;  

