-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/update/grant/alterations/alt0000001522 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'update', 'authenticated');
COMMIT;  

