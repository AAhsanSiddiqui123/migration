-- Verify: schemas/dashboard_public/tables/location_types/table/alterations/alt0000001484 on pg

BEGIN;
SELECT verify_table('dashboard_public.location_types');
COMMIT;  

