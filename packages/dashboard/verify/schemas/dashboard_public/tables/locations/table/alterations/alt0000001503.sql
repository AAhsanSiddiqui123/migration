-- Verify: schemas/dashboard_public/tables/locations/table/alterations/alt0000001503 on pg

BEGIN;
SELECT verify_table('dashboard_public.locations');
COMMIT;  

