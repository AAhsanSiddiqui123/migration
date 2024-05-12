-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/delete/grant/alterations/alt0000001523 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'delete', 'authenticated');
COMMIT;  

