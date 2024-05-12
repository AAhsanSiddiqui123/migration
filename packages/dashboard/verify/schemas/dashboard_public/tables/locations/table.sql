-- Verify: schemas/dashboard_public/tables/locations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.locations');
COMMIT;  

