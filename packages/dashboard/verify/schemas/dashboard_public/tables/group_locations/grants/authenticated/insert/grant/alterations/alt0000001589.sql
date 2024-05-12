-- Verify: schemas/dashboard_public/tables/group_locations/grants/authenticated/insert/grant/alterations/alt0000001589 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_locations', 'insert', 'authenticated');
COMMIT;  

