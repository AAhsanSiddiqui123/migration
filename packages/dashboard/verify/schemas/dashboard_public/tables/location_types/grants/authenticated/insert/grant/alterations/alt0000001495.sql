-- Verify: schemas/dashboard_public/tables/location_types/grants/authenticated/insert/grant/alterations/alt0000001495 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.location_types', 'insert', 'authenticated');
COMMIT;  

