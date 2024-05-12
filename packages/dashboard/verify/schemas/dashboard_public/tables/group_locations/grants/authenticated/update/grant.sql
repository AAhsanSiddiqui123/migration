-- Verify: schemas/dashboard_public/tables/group_locations/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_locations', 'update', 'authenticated');
COMMIT;  

