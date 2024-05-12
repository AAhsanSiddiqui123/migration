-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/insert/grant/alterations/alt0000001520 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'insert', 'authenticated');
COMMIT;  

