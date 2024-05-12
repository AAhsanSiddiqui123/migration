-- Verify: schemas/dashboard_public/tables/groups/table on pg

BEGIN;
SELECT verify_table('dashboard_public.groups');
COMMIT;  

