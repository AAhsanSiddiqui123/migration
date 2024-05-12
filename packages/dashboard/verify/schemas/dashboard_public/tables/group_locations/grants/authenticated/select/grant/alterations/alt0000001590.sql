-- Verify: schemas/dashboard_public/tables/group_locations/grants/authenticated/select/grant/alterations/alt0000001590 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_locations', 'select', 'authenticated');
COMMIT;  

