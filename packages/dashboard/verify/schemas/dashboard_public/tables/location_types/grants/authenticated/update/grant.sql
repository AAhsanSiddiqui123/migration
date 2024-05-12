-- Verify: schemas/dashboard_public/tables/location_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.location_types', 'update', 'authenticated');
COMMIT;  

