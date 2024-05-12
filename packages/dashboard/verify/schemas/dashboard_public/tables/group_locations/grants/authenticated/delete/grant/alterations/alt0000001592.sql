-- Verify: schemas/dashboard_public/tables/group_locations/grants/authenticated/delete/grant/alterations/alt0000001592 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_locations', 'delete', 'authenticated');
COMMIT;  

