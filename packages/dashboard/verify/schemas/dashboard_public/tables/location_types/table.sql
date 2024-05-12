-- Verify: schemas/dashboard_public/tables/location_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.location_types');
COMMIT;  

