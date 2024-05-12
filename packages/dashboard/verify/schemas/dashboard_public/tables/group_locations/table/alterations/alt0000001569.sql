-- Verify: schemas/dashboard_public/tables/group_locations/table/alterations/alt0000001569 on pg

BEGIN;
SELECT verify_table('dashboard_public.group_locations');
COMMIT;  

