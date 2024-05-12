-- Verify: schemas/dashboard_public/tables/groups/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.groups', 'update', 'authenticated');
COMMIT;  

