-- Verify: schemas/dashboard_public/tables/location_types/grants/authenticated/select/grant/alterations/alt0000001496 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.location_types', 'select', 'authenticated');
COMMIT;  

