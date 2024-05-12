-- Verify: schemas/dashboard_public/tables/user_locations/grants/authenticated/delete/grant/alterations/alt0000001551 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_locations', 'delete', 'authenticated');
COMMIT;  

