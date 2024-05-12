-- Verify: schemas/dashboard_public/tables/group_locations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.group_locations');
COMMIT;  

