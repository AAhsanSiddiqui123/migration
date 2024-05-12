-- Verify: schemas/dashboard_public/tables/location_types/grants/authenticated/update/grant/alterations/alt0000001497 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.location_types', 'update', 'authenticated');
COMMIT;  

