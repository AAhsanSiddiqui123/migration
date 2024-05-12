-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/select/grant/alterations/alt0000001521 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'select', 'authenticated');
COMMIT;  

