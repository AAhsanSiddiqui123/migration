-- Verify: schemas/dashboard_public/tables/user_locations/grants/authenticated/update/grant/alterations/alt0000001550 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_locations', 'update', 'authenticated');
COMMIT;  

